.class public interface abstract annotation Lorg/checkerframework/checker/interning/qual/Interned;
.super Ljava/lang/Object;
.source "Interned.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
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

.annotation runtime Lorg/checkerframework/framework/qual/DefaultFor;
    value = {
        .enum Lorg/checkerframework/framework/qual/TypeUseLocation;->LOWER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;
    }
.end annotation

.annotation runtime Lorg/checkerframework/framework/qual/ImplicitFor;
    literals = {
        .enum Lorg/checkerframework/framework/qual/LiteralKind;->ALL:Lorg/checkerframework/framework/qual/LiteralKind;
    }
    typeNames = {
        Ljava/lang/Void;
    }
    types = {
        .enum Ljavax/lang/model/type/TypeKind;->BOOLEAN:Ljavax/lang/model/type/TypeKind;,
        .enum Ljavax/lang/model/type/TypeKind;->BYTE:Ljavax/lang/model/type/TypeKind;,
        .enum Ljavax/lang/model/type/TypeKind;->CHAR:Ljavax/lang/model/type/TypeKind;,
        .enum Ljavax/lang/model/type/TypeKind;->DOUBLE:Ljavax/lang/model/type/TypeKind;,
        .enum Ljavax/lang/model/type/TypeKind;->FLOAT:Ljavax/lang/model/type/TypeKind;,
        .enum Ljavax/lang/model/type/TypeKind;->INT:Ljavax/lang/model/type/TypeKind;,
        .enum Ljavax/lang/model/type/TypeKind;->LONG:Ljavax/lang/model/type/TypeKind;,
        .enum Ljavax/lang/model/type/TypeKind;->SHORT:Ljavax/lang/model/type/TypeKind;
    }
.end annotation

.annotation runtime Lorg/checkerframework/framework/qual/SubtypeOf;
    value = {
        Lorg/checkerframework/checker/interning/qual/UnknownInterned;
    }
.end annotation