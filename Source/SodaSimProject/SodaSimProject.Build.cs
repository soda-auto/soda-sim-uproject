using System.IO;
using UnrealBuildTool;

public class SodaSimProject : ModuleRules
{
	public SodaSimProject(ReadOnlyTargetRules Target) : base(Target)
	{
		PrivatePCHHeaderFile = "SodaSimProject.h";

		PublicDependencyModuleNames.AddRange(new string[] { "Core", "CoreUObject", "Engine", "InputCore" });

		if (Target.Type == TargetType.Editor)
        {
            PublicDependencyModuleNames.AddRange(new string[] { "UnrealEd" });
        }

		PrivateDependencyModuleNames.AddRange(new string[] {  });

        RuntimeDependencies.Add("$(TargetOutputDir)/../../Saved/SodaVehicles/...");
        RuntimeDependencies.Add("$(TargetOutputDir)/../../OpenDrive/...");
    }
}
