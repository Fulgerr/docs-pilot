# Registering custom services

To enhance your coded automations, consider registering custom services. By registering a custom service, you can use it globally in your project. This way, it's accessible not only in a single coded automation, but in all coded automations within your project.

Create a code source file and define a public interface named as the service you wish to create.This interface should list the methods you intend to use with your custom service. Each method must be implemented in a separate class which inherits the same file where you're defining the interface.For this example, name the interface as IMyService and call the method inside it DoMyMethod.{
    public interface IMyService
    {
        void DoMyMethod();
    }
}Proceed to another code source file and implement the methods from the previously created interface.This class must inherit from the same code source file where the public interface was created.In this example, implement the DoMyMethod method to output the value of a variable.public class MyService : IMyService
    {
        public void DoMyMethod()
        {
            var a = "hello world";
            Console.WriteLine(a);
        }
    }
}Build a partial class to wrap your custom service, making it accessible from any coded workflow that inherits this class.Create another code source file and declare the public partial class named Coded Workflow. Make this class inherit the CodedWorkflowBase class.Create a get-only property for the custom service you created, which allows access to an instance of the service interface. The instance is obtained through dependency injection using the serviceContainer.Resolve<IMyService>() method. This provides a way to interact with the custom service within the partial class.public IMyService myService { get => serviceContainer.Resolve<IMyService>()};Expand your class further by adding the RegisterServices method.By invoking this method, you register your custom service within the UiPath service container.protected override void RegisterServices(ICodedWorkflowsServiceLocator serviceLocator)
		{
			serviceLocator.RegisterType<IMyService, MyService>();
		}You can also use RegisterInstance instead of RegisterType. Check the following differences between the two implementations, and their signature methods:RegisterType - When you use RegisterType, you specify the container to create a new copy or instance of your service each time you call it. RegisterType gives a blueprint to follow, based on which to build a new service each time.TService: This is the service interface type that will be consumed by the service. It's the interface that you create for your service. For this example, it's IMyService.TServiceImplementation: This is the class that implements the TService interface. It's the class that is created when a service of type TService is requested.registrationType: This defaults to CodeServiceRegistrationType.Singleton. It sets the service registration policy.void RegisterType<TService, TServiceImplementation>(CodeServiceRegistrationType registrationType = CodeServiceRegistrationType.Singleton)
            where TService : class
            where TServiceImplementation : class, TService;RegisterInstance - When you use RegisterInstance, you offer the container a ready-made instance of that service, that you already created before. Every time you call the service, the container returns this exact pre-made service. RegisterInstance returns an exact copy of the service that you created.TServiceImplementation: This is the ready-made instance of a class that you have already created. This instance is returned whenever a service of this type needs to be resolved. For this example, MySecondService.serviceTypes: This is an array of types that the instance will be available as, when calling it.void RegisterInstance<TServiceImplementation>(TServiceImplementation instance, params Type[] serviceTypes) 
            where TServiceImplementation : class;The code snippet below shows an example of how the public partial class was implemented:public partial class CodedWorkflow : CodedWorkflowBase
    {
		public IMyService myService { get => serviceContainer.Resolve<IMyService>() ; }
		
		protected override void RegisterServices(ICodedWorkflowsServiceLocator serviceLocator)
		{
                    // Implementation using 'RegisterType'
			serviceLocator.RegisterType<IMyService, MyService>();
                    // Implementation using 'RegisterInstance'
                    var secondService = new MySecondService();
                    serviceLocator.RegisterInstance<MySecondService>(secondService);
		}

Next stepsTo use the custom service that you created, reference the namespace of that service within the file you are working on, by employing the using statement. The namespace of the custom service represents the name of the project, and the name of the folders/subfolders that the .cs file might be in. The format of the namespace is the following: <ProjectName>.<Folder>.<SubFolder>For example, if you create a custom service inside a project that is named GeneralCustomServices, within the MyCustomService folder, then the namespace of that service is: GeneralCustomServices.MyCustomService.
