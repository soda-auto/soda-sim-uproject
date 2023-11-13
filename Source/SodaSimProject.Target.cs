// Fill out your copyright notice in the Description page of Project Settings.

using UnrealBuildTool;
using System.Collections.Generic;

public class SodaSimProjectTarget : TargetRules
{
	public SodaSimProjectTarget(TargetInfo Target) : base(Target)
	{
		Type = TargetType.Game;
		ExtraModuleNames.Add("SodaSimProject");
		
		//LinkType = TargetLinkType.Modular;
	}
}
