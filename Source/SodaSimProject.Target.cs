// Fill out your copyright notice in the Description page of Project Settings.

using UnrealBuildTool;
using System.Collections.Generic;

public class SodaSimProjectTarget : TargetRules
{
	public SodaSimProjectTarget(TargetInfo Target) : base(Target)
	{
		Type = TargetType.Game;
		ExtraModuleNames.Add("SodaSimProject");

        IncludeOrderVersion = EngineIncludeOrderVersion.Latest;
        DefaultBuildSettings = BuildSettingsVersion.V5;

        CustomConfig = "SodaSim";
        bOverrideBuildEnvironment = true;

        //LinkType = TargetLinkType.Modular;
       //bShouldCompileAsDLL = true;
    }
}
