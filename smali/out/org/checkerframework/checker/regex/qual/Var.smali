.class public interface abstract annotation Lorg/checkerframework/checker/regex/qual/Var;
.super Ljava/lang/Object;
.source "Var.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/checkerframework/checker/regex/qual/Var;
        arg = "_primary"
        param = "_primary"
        wildcard = .enum Lorg/checkerframework/qualframework/poly/qual/Wildcard;->NONE:Lorg/checkerframework/qualframework/poly/qual/Wildcard;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Repeatable;
    value = Lorg/checkerframework/checker/regex/qual/MultiVar;
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
.method public abstract arg()Ljava/lang/String;
.end method

.method public abstract param()Ljava/lang/String;
.end method

.method public abstract wildcard()Lorg/checkerframework/qualframework/poly/qual/Wildcard;
.end method