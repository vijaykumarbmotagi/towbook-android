.class public interface abstract annotation Lafu/org/checkerframework/checker/tainting/qual/MultiClassTaintingParam;
.super Ljava/lang/Object;
.source "MultiClassTaintingParam.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract value()[Lafu/org/checkerframework/checker/tainting/qual/ClassTaintingParam;
.end method
