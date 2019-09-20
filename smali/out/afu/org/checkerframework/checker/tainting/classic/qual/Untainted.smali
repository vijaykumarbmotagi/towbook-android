.class public interface abstract annotation Lafu/org/checkerframework/checker/tainting/classic/qual/Untainted;
.super Ljava/lang/Object;
.source "Untainted.java"

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
        .enum Lafu/com/sun/source/tree/Tree$Kind;->STRING_LITERAL:Lafu/com/sun/source/tree/Tree$Kind;,
        .enum Lafu/com/sun/source/tree/Tree$Kind;->NULL_LITERAL:Lafu/com/sun/source/tree/Tree$Kind;
    }
.end annotation

.annotation runtime Lafu/org/checkerframework/framework/qual/SubtypeOf;
    value = {
        Lafu/org/checkerframework/checker/tainting/classic/qual/Tainted;
    }
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
