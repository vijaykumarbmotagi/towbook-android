.class public interface abstract annotation Lafu/org/checkerframework/checker/regex/qual/MultiClassRegexParam;
.super Ljava/lang/Object;
.source "MultiClassRegexParam.java"

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
.method public abstract value()[Lafu/org/checkerframework/checker/regex/qual/ClassRegexParam;
.end method
