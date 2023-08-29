// Fill out your copyright notice in the Description page of Project Settings.

using UnrealBuildTool;
using System.Collections.Generic;

public class SodaSimBaseEditorTarget : TargetRules
{
	public SodaSimBaseEditorTarget(TargetInfo Target) : base(Target)
	{
		Type = TargetType.Editor;
		ExtraModuleNames.Add("SodaSimBase");

		//bUseUnityBuild = false;
	}
}
