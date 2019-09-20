.class public interface abstract annotation Lafu/org/checkerframework/common/reflection/qual/ClassValBottom;
.super Ljava/lang/Object;
.source "ClassValBottom.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lafu/org/checkerframework/framework/qual/ImplicitFor;
    trees = {
        .enum Lafu/com/sun/source/tree/Tree$Kind;->NULL_LITERAL:Lafu/com/sun/source/tree/Tree$Kind;
    }
    typeNames = {
        Ljava/lang/Void;
    }
.end annotation

.annotation runtime Lafu/org/checkerframework/framework/qual/InvisibleQualifier;
.end annotation

.annotation runtime Lafu/org/checkerframework/framework/qual/SubtypeOf;
    value = {
        Lafu/org/checkerframework/common/reflection/qual/ClassVal;,
        Lafu/org/checkerframework/common/reflection/qual/ClassBound;
    }
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
