.class public interface abstract annotation Lafu/org/checkerframework/checker/tainting/qual/Untainted;
.super Ljava/lang/Object;
.source "Untainted.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lafu/org/checkerframework/checker/tainting/qual/Untainted;
        param = "_primary"
        wildcard = .enum Lafu/org/checkerframework/qualframework/poly/qual/Wildcard;->NONE:Lafu/org/checkerframework/qualframework/poly/qual/Wildcard;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Repeatable;
    value = Lafu/org/checkerframework/checker/tainting/qual/MultiUntainted;
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
.method public abstract param()Ljava/lang/String;
.end method

.method public abstract wildcard()Lafu/org/checkerframework/qualframework/poly/qual/Wildcard;
.end method
