.class public interface abstract annotation Lafu/org/checkerframework/checker/lock/qual/LockHeld;
.super Ljava/lang/Object;
.source "LockHeld.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lafu/org/checkerframework/framework/qual/DefaultFor;
    value = {
        .enum Lafu/org/checkerframework/framework/qual/DefaultLocation;->LOWER_BOUNDS:Lafu/org/checkerframework/framework/qual/DefaultLocation;
    }
.end annotation

.annotation runtime Lafu/org/checkerframework/framework/qual/SubtypeOf;
    value = {
        Lafu/org/checkerframework/checker/lock/qual/LockPossiblyHeld;
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
