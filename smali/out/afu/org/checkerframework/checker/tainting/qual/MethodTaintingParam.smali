.class public interface abstract annotation Lafu/org/checkerframework/checker/tainting/qual/MethodTaintingParam;
.super Ljava/lang/Object;
.source "MethodTaintingParam.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lafu/org/checkerframework/checker/tainting/qual/MethodTaintingParam;
        value = "_primary"
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Repeatable;
    value = Lafu/org/checkerframework/checker/tainting/qual/MultiMethodTaintingParam;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract value()Ljava/lang/String;
.end method
