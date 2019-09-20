.class public interface abstract annotation Lorg/checkerframework/checker/signature/qual/SourceNameForNonArrayNonInner;
.super Ljava/lang/Object;
.source "SourceNameForNonArrayNonInner.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->TYPE_PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lorg/checkerframework/framework/qual/SubtypeOf;
    value = {
        Lorg/checkerframework/checker/signature/qual/SourceNameForNonInner;,
        Lorg/checkerframework/checker/signature/qual/BinaryNameForNonArray;
    }
.end annotation
