.class public interface abstract annotation Lafu/org/checkerframework/checker/signature/qual/SourceNameForNonArray;
.super Ljava/lang/Object;
.source "SourceNameForNonArray.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lafu/org/checkerframework/framework/qual/SubtypeOf;
    value = {
        Lafu/org/checkerframework/checker/signature/qual/SourceName;,
        Lafu/org/checkerframework/checker/signature/qual/BinaryNameForNonArray;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->TYPE_PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation
