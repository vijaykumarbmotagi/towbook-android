.class public interface abstract annotation Lafu/org/checkerframework/checker/signature/qual/ClassGetName;
.super Ljava/lang/Object;
.source "ClassGetName.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lafu/org/checkerframework/framework/qual/ImplicitFor;
    stringPatterns = {
        "(^[A-Za-z_][A-Za-z_0-9]*(\\.[A-Za-z_][A-Za-z_0-9]*)*(\\$[A-Za-z_][A-Za-z_0-9]*)?$)|^\\[+([BCDFIJSZ]|L[A-Za-z_][A-Za-z_0-9]*(\\.[A-Za-z_][A-Za-z_0-9]*)*(\\$[A-Za-z_][A-Za-z_0-9]*)?;)$"
    }
.end annotation

.annotation runtime Lafu/org/checkerframework/framework/qual/SubtypeOf;
    value = {
        Lafu/org/checkerframework/checker/signature/qual/UnannotatedString;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->TYPE_PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation