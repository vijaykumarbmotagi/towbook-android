.class public interface abstract annotation Lafu/org/checkerframework/checker/i18nformatter/qual/I18nUnknownFormat;
.super Ljava/lang/Object;
.source "I18nUnknownFormat.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lafu/org/checkerframework/framework/qual/DefaultQualifierInHierarchy;
.end annotation

.annotation runtime Lafu/org/checkerframework/framework/qual/InvisibleQualifier;
.end annotation

.annotation runtime Lafu/org/checkerframework/framework/qual/SubtypeOf;
    value = {}
.end annotation

.annotation runtime Lafu/org/checkerframework/framework/qual/TargetLocations;
    value = {
        .enum Lafu/org/checkerframework/framework/qual/DefaultLocation;->EXPLICIT_LOWER_BOUNDS:Lafu/org/checkerframework/framework/qual/DefaultLocation;,
        .enum Lafu/org/checkerframework/framework/qual/DefaultLocation;->EXPLICIT_UPPER_BOUNDS:Lafu/org/checkerframework/framework/qual/DefaultLocation;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;
    }
.end annotation