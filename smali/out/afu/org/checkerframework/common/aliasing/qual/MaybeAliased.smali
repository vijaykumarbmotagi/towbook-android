.class public interface abstract annotation Lafu/org/checkerframework/common/aliasing/qual/MaybeAliased;
.super Ljava/lang/Object;
.source "MaybeAliased.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lafu/org/checkerframework/framework/qual/DefaultQualifierInHierarchy;
.end annotation

.annotation runtime Lafu/org/checkerframework/framework/qual/ImplicitFor;
    trees = {
        .enum Lafu/com/sun/source/tree/Tree$Kind;->NULL_LITERAL:Lafu/com/sun/source/tree/Tree$Kind;
    }
    typeNames = {
        Ljava/lang/Void;
    }
.end annotation

.annotation runtime Lafu/org/checkerframework/framework/qual/SubtypeOf;
    value = {}
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE_PARAMETER:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;
    }
.end annotation
