.class public interface abstract annotation Lafu/org/checkerframework/checker/oigj/qual/OIGJMutabilityBottom;
.super Ljava/lang/Object;
.source "OIGJMutabilityBottom.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lafu/org/checkerframework/framework/qual/DefaultFor;
    value = {
        .enum Lafu/org/checkerframework/framework/qual/DefaultLocation;->LOWER_BOUNDS:Lafu/org/checkerframework/framework/qual/DefaultLocation;
    }
.end annotation

.annotation runtime Lafu/org/checkerframework/framework/qual/ImplicitFor;
    trees = {
        .enum Lafu/com/sun/source/tree/Tree$Kind;->NULL_LITERAL:Lafu/com/sun/source/tree/Tree$Kind;,
        .enum Lafu/com/sun/source/tree/Tree$Kind;->CLASS:Lafu/com/sun/source/tree/Tree$Kind;,
        .enum Lafu/com/sun/source/tree/Tree$Kind;->ENUM:Lafu/com/sun/source/tree/Tree$Kind;,
        .enum Lafu/com/sun/source/tree/Tree$Kind;->INTERFACE:Lafu/com/sun/source/tree/Tree$Kind;,
        .enum Lafu/com/sun/source/tree/Tree$Kind;->ANNOTATION_TYPE:Lafu/com/sun/source/tree/Tree$Kind;,
        .enum Lafu/com/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lafu/com/sun/source/tree/Tree$Kind;
    }
    typeClasses = {
        Lafu/org/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    }
    typeNames = {
        Ljava/lang/Void;
    }
.end annotation

.annotation runtime Lafu/org/checkerframework/framework/qual/SubtypeOf;
    value = {
        Lafu/org/checkerframework/checker/oigj/qual/Mutable;,
        Lafu/org/checkerframework/checker/oigj/qual/Immutable;,
        Lafu/org/checkerframework/checker/oigj/qual/I;,
        Lafu/org/checkerframework/checker/oigj/qual/Modifier;,
        Lafu/org/checkerframework/checker/oigj/qual/O;
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
