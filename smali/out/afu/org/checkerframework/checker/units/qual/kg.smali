.class public interface abstract annotation Lafu/org/checkerframework/checker/units/qual/kg;
.super Ljava/lang/Object;
.source "kg.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Lafu/org/checkerframework/checker/units/qual/UnitsMultiple;
    prefix = .enum Lafu/org/checkerframework/checker/units/qual/Prefix;->kilo:Lafu/org/checkerframework/checker/units/qual/Prefix;
    quantity = Lafu/org/checkerframework/checker/units/qual/g;
.end annotation

.annotation runtime Lafu/org/checkerframework/framework/qual/SubtypeOf;
    value = {
        Lafu/org/checkerframework/checker/units/qual/Mass;
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
