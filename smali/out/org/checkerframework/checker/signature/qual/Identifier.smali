.class public interface abstract annotation Lorg/checkerframework/checker/signature/qual/Identifier;
.super Ljava/lang/Object;
.source "Identifier.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->TYPE_PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lorg/checkerframework/framework/qual/ImplicitFor;
    stringPatterns = {
        "^([A-Za-z_][A-Za-z_0-9]*)$"
    }
.end annotation

.annotation runtime Lorg/checkerframework/framework/qual/SubtypeOf;
    value = {
        Lorg/checkerframework/checker/signature/qual/SourceNameForNonArrayNonInner;,
        Lorg/checkerframework/checker/signature/qual/BinaryNameForNonArrayInUnnamedPackage;,
        Lorg/checkerframework/checker/signature/qual/IdentifierOrArray;
    }
.end annotation
