# Using two-factor authentication within coded
        automations

This tutorial shows how to include sample code that generates two-factor authentication
            codes for your automations. Here are the ways to implement the two-factor authentication
                code:Copy and paste the code into a CS
                    file of your target project.Use a sample NUPGK file in your project.When opting to use the sample NUPKG
                        file, you have the capability to add the two-factor authentication as an
                        activity within your XAML files.Regardless of whether you choose to
                integrate the sample two-factor authentication code generator in your CS files (for
                coded automations) or XAML files (for low-code automations), remember that you can
                invoke a coded automation into a low-code one and vice versa. For more information
                about hybrid automations, visit .

# Copy and paste the code in CS files

To use the two-factor authentication sample in your coded automation, you can copy
                and paste the following sample code in a CS file from your target project.The sample code generates a new authentication code every
                    30 seconds. For example, if an authentication code is generated at 3 hours, 45
                    minutes, and 27 seconds, that code is available for three seconds. A new code is
                    then generated at the 30 seconds mark.

using System;
using System.Collections.Generic;
using UiPath.CodedWorkflows;
using System.Security.Cryptography;

namespace GenerateTwoFactorAuthenticationCode
{
    public class Workflow : CodedWorkflow
    {
        [Workflow]
        public string Execute(string secretKey)
        {
            return AuthenticationCode(secretKey);
        }

        private string AuthenticationCode(string secret)
        {
            // Step 1: Decode the base32 secret key
            byte[] key = Base32Decode(secret);

            // Step 2: Calculate the time step (current time divided by 30 seconds)
            long unixTime = DateTimeOffset.UtcNow.ToUnixTimeSeconds();
            long timeStep = unixTime / 30;

            // Step 3: Convert time step to byte array (8 bytes, big-endian)
            byte[] timeBytes = BitConverter.GetBytes(timeStep);
            if (BitConverter.IsLittleEndian)
                Array.Reverse(timeBytes);

            // Step 4: Generate HMAC-SHA1 hash using the time step as message and secret key
            using (HMACSHA1 hmac = new HMACSHA1(key))
            {
                byte[] hash = hmac.ComputeHash(timeBytes);

                // Step 5: Extract dynamic binary code (4 bytes) from the hash
                int offset = hash[hash.Length - 1] & 0x0F;
                int binaryCode = (hash[offset] & 0x7F) << 24
                               | (hash[offset + 1] & 0xFF) << 16
                               | (hash[offset + 2] & 0xFF) << 8
                               | (hash[offset + 3] & 0xFF);

                // Step 6: Modulo to get a 6-digit code
                int otp = binaryCode % 1_000_000;

                // Return the OTP as a zero-padded 6-digit string
                return otp.ToString("D6");
            }
        }

        // Base32 decoding function to get the byte array from the base32-encoded key
        private static byte[] Base32Decode(string base32)
        {
            // Decode Base32-encoded string to byte array
            const string base32Chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567";
            int bitBuffer = 0;
            int bitBufferLen = 0;
            var result = new List<byte>();

            foreach (char c in base32.ToUpper())
            {
                if (c == '=') break;

                int index = base32Chars.IndexOf(c);
                if (index < 0) throw new ArgumentException("Invalid Base32 character");

                bitBuffer = (bitBuffer << 5) | index;
                bitBufferLen += 5;

                if (bitBufferLen >= 8)
                {
                    result.Add((byte)(bitBuffer >> (bitBufferLen - 8)));
                    bitBufferLen -= 8;
                }
            }

            return result.ToArray();
        }
    }
}

# Use a sample NUPGK file

If you want to use a sample NUPKG file for including the two-factor code in your
                automations, follow these steps:Download the following NUPKG
                        file: GenerateTwoFactorAuthenticationCode.nupkg.Upload the downloaded NUPKG
                        file to your Orchestrator Host or Tenant feed, which are
                        accessible through your Studio instance.For more information on uploading
                            the NUPKG file as a custom library to Orchestrator, visit Manually uploading a library to
                                Orchestrator.Open your Studio project and open the Manage Packages menu.Search for the
                            GenerateTwoFactorAuthenticationCode NUPKG file you
                        previously saved to your Orchestrator Host or Orchestrator
                            Tenant feed, and install it.The custom library in the Manage Packages menuThe custom library in the Manage Packages menu

After you install the file, navigate to the Activities panel and locate
                    GenerateTwoFactorAuthenticationCode. Drag and drop the Get 2FA
                    token activity into your XAML files to generate an authentication code for
                your automations.The GenerateTwoFactorAuthentication code sample in the
                            Activities panelThe GenerateTwoFactorAuthentication code sample in the
                                Activities panel
