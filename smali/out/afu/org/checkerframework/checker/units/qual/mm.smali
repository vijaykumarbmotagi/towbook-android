.class public interface abstract annotation Lafu/org/checkerframework/checker/units/qual/mm;
.super Ljava/lang/Object;
.source "mm.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Lafu/org/checkerframework/checker/units/qual/UnitsMultiple;
    prefix = .enum Lafu/org/checkerframework/checker/units/qual/Prefix;->milli:Lafu/org/checkerframework/checker/units/qual/Prefix;
    quantity = Lafu/org/checkerframework/checker/units/qual/m;
.end annotation

.annotation runtime Lafu/org/checkerframework/framework/qual/SubtypeOf;
    value = {
        Lafu/org/checkerframework/checker/units/qual/Length;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->TYPE_PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation
