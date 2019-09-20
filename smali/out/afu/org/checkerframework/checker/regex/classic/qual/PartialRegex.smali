.class public interface abstract annotation Lafu/org/checkerframework/checker/regex/classic/qual/PartialRegex;
.super Ljava/lang/Object;
.source "PartialRegex.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lafu/org/checkerframework/framework/qual/InvisibleQualifier;
.end annotation

.annotation runtime Lafu/org/checkerframework/framework/qual/SubtypeOf;
    value = {
        Lafu/org/checkerframework/checker/regex/classic/qual/UnknownRegex;
    }
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lafu/org/checkerframework/checker/regex/classic/qual/PartialRegex;
        value = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {}
.end annotation


# virtual methods
.method public abstract value()Ljava/lang/String;
.end method
