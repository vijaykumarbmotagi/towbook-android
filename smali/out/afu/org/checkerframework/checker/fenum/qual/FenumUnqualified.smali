.class public interface abstract annotation Lafu/org/checkerframework/checker/fenum/qual/FenumUnqualified;
.super Ljava/lang/Object;
.source "FenumUnqualified.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lafu/org/checkerframework/framework/qual/DefaultFor;
    value = {
        .enum Lafu/org/checkerframework/framework/qual/DefaultLocation;->IMPLICIT_UPPER_BOUNDS:Lafu/org/checkerframework/framework/qual/DefaultLocation;,
        .enum Lafu/org/checkerframework/framework/qual/DefaultLocation;->IMPLICIT_LOWER_BOUNDS:Lafu/org/checkerframework/framework/qual/DefaultLocation;,
        .enum Lafu/org/checkerframework/framework/qual/DefaultLocation;->EXCEPTION_PARAMETER:Lafu/org/checkerframework/framework/qual/DefaultLocation;
    }
.end annotation

.annotation runtime Lafu/org/checkerframework/framework/qual/DefaultQualifierInHierarchy;
.end annotation

.annotation runtime Lafu/org/checkerframework/framework/qual/SubtypeOf;
    value = {
        Lafu/org/checkerframework/checker/fenum/qual/FenumTop;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {}
.end annotation
