.class public interface abstract annotation Lafu/org/checkerframework/checker/igj/qual/Mutable;
.super Ljava/lang/Object;
.source "Mutable.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lafu/org/checkerframework/framework/qual/DefaultFor;
    value = {
        .enum Lafu/org/checkerframework/framework/qual/DefaultLocation;->EXCEPTION_PARAMETER:Lafu/org/checkerframework/framework/qual/DefaultLocation;
    }
.end annotation

.annotation runtime Lafu/org/checkerframework/framework/qual/DefaultQualifierInHierarchy;
.end annotation

.annotation runtime Lafu/org/checkerframework/framework/qual/SubtypeOf;
    value = {
        Lafu/org/checkerframework/checker/igj/qual/AssignsFields;
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
