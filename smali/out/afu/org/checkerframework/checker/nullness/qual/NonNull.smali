.class public interface abstract annotation Lafu/org/checkerframework/checker/nullness/qual/NonNull;
.super Ljava/lang/Object;
.source "NonNull.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lafu/org/checkerframework/framework/qual/DefaultFor;
    value = {
        .enum Lafu/org/checkerframework/framework/qual/DefaultLocation;->EXCEPTION_PARAMETER:Lafu/org/checkerframework/framework/qual/DefaultLocation;
    }
.end annotation

.annotation runtime Lafu/org/checkerframework/framework/qual/DefaultInUncheckedCodeFor;
    value = {
        .enum Lafu/org/checkerframework/framework/qual/DefaultLocation;->PARAMETERS:Lafu/org/checkerframework/framework/qual/DefaultLocation;,
        .enum Lafu/org/checkerframework/framework/qual/DefaultLocation;->LOWER_BOUNDS:Lafu/org/checkerframework/framework/qual/DefaultLocation;
    }
.end annotation

.annotation runtime Lafu/org/checkerframework/framework/qual/DefaultQualifierInHierarchy;
.end annotation

.annotation runtime Lafu/org/checkerframework/framework/qual/ImplicitFor;
    trees = {
        .enum Lafu/com/sun/source/tree/Tree$Kind;->NEW_CLASS:Lafu/com/sun/source/tree/Tree$Kind;,
        .enum Lafu/com/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lafu/com/sun/source/tree/Tree$Kind;,
        .enum Lafu/com/sun/source/tree/Tree$Kind;->PLUS:Lafu/com/sun/source/tree/Tree$Kind;,
        .enum Lafu/com/sun/source/tree/Tree$Kind;->BOOLEAN_LITERAL:Lafu/com/sun/source/tree/Tree$Kind;,
        .enum Lafu/com/sun/source/tree/Tree$Kind;->CHAR_LITERAL:Lafu/com/sun/source/tree/Tree$Kind;,
        .enum Lafu/com/sun/source/tree/Tree$Kind;->DOUBLE_LITERAL:Lafu/com/sun/source/tree/Tree$Kind;,
        .enum Lafu/com/sun/source/tree/Tree$Kind;->FLOAT_LITERAL:Lafu/com/sun/source/tree/Tree$Kind;,
        .enum Lafu/com/sun/source/tree/Tree$Kind;->INT_LITERAL:Lafu/com/sun/source/tree/Tree$Kind;,
        .enum Lafu/com/sun/source/tree/Tree$Kind;->LONG_LITERAL:Lafu/com/sun/source/tree/Tree$Kind;,
        .enum Lafu/com/sun/source/tree/Tree$Kind;->STRING_LITERAL:Lafu/com/sun/source/tree/Tree$Kind;
    }
    typeClasses = {
        Lafu/org/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;,
        Lafu/org/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedNoType;
    }
    types = {
        .enum Ljavax/lang/model/type/TypeKind;->PACKAGE:Ljavax/lang/model/type/TypeKind;
    }
.end annotation

.annotation runtime Lafu/org/checkerframework/framework/qual/SubtypeOf;
    value = {
        Lafu/org/checkerframework/checker/nullness/qual/MonotonicNonNull;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->TYPE_PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation
