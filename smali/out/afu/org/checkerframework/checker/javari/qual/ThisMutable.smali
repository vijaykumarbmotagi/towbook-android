.class public interface abstract annotation Lafu/org/checkerframework/checker/javari/qual/ThisMutable;
.super Ljava/lang/Object;
.source "ThisMutable.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lafu/org/checkerframework/framework/qual/DefaultFor;
    value = {
        .enum Lafu/org/checkerframework/framework/qual/DefaultLocation;->FIELD:Lafu/org/checkerframework/framework/qual/DefaultLocation;
    }
.end annotation

.annotation runtime Lafu/org/checkerframework/framework/qual/SubtypeOf;
    value = {
        Lafu/org/checkerframework/checker/javari/qual/ReadOnly;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {}
.end annotation
