.class public interface abstract annotation Lafu/org/checkerframework/common/reflection/qual/MethodVal;
.super Ljava/lang/Object;
.source "MethodVal.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lafu/org/checkerframework/framework/qual/SubtypeOf;
    value = {
        Lafu/org/checkerframework/common/reflection/qual/UnknownMethod;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract className()[Ljava/lang/String;
.end method

.method public abstract methodName()[Ljava/lang/String;
.end method

.method public abstract params()[I
.end method
