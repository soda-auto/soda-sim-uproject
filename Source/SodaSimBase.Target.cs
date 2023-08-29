// Fill out your copyright notice in the Description page of Project Settings.

using UnrealBuildTool;
using System.Collections.Generic;

public class SodaSimBaseTarget : TargetRules
{
	public SodaSimBaseTarget(TargetInfo Target) : base(Target)
	{
		Type = TargetType.Game;
		ExtraModuleNames.Add("SodaSimBase");
		
		//LinkType = TargetLinkType.Modular;
	}
}
