.class public interface abstract annotation Lorg/checkerframework/checker/regex/classic/qual/PartialRegex;
.super Ljava/lang/Object;
.source "PartialRegex.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/checkerframework/checker/regex/classic/qual/PartialRegex;
        value = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {}
.end annotation

.annotation runtime Lorg/checkerframework/framework/qual/InvisibleQualifier;
.end annotation

.annotation runtime Lorg/checkerframework/framework/qual/SubtypeOf;
    value = {
        Lorg/checkerframework/checker/regex/classic/qual/UnknownRegex;
    }
.end annotation


# virtual methods
.method public abstract value()Ljava/lang/String;
.end method
