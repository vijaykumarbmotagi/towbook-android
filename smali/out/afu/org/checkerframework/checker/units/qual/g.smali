.class public interface abstract annotation Lafu/org/checkerframework/checker/units/qual/g;
.super Ljava/lang/Object;
.source "g.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lafu/org/checkerframework/framework/qual/SubtypeOf;
    value = {
        Lafu/org/checkerframework/checker/units/qual/Mass;
    }
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lafu/org/checkerframework/checker/units/qual/g;
        value = .enum Lafu/org/checkerframework/checker/units/qual/Prefix;->one:Lafu/org/checkerframework/checker/units/qual/Prefix;
    .end subannotation
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


# virtual methods
.method public abstract value()Lafu/org/checkerframework/checker/units/qual/Prefix;
.end method