.class public interface abstract annotation Lafu/org/checkerframework/checker/i18n/qual/Localized;
.super Ljava/lang/Object;
.source "Localized.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lafu/org/checkerframework/framework/qual/ImplicitFor;
    trees = {
        .enum Lafu/com/sun/source/tree/Tree$Kind;->INT_LITERAL:Lafu/com/sun/source/tree/Tree$Kind;,
        .enum Lafu/com/sun/source/tree/Tree$Kind;->LONG_LITERAL:Lafu/com/sun/source/tree/Tree$Kind;,
        .enum Lafu/com/sun/source/tree/Tree$Kind;->FLOAT_LITERAL:Lafu/com/sun/source/tree/Tree$Kind;,
        .enum Lafu/com/sun/source/tree/Tree$Kind;->DOUBLE_LITERAL:Lafu/com/sun/source/tree/Tree$Kind;,
        .enum Lafu/com/sun/source/tree/Tree$Kind;->BOOLEAN_LITERAL:Lafu/com/sun/source/tree/Tree$Kind;,
        .enum Lafu/com/sun/source/tree/Tree$Kind;->NULL_LITERAL:Lafu/com/sun/source/tree/Tree$Kind;
    }
.end annotation

.annotation runtime Lafu/org/checkerframework/framework/qual/SubtypeOf;
    value = {
        Lafu/org/checkerframework/checker/i18n/qual/UnknownLocalized;
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
