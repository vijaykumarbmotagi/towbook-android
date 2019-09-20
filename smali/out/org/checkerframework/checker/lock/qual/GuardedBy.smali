.class public interface abstract annotation Lorg/checkerframework/checker/lock/qual/GuardedBy;
.super Ljava/lang/Object;
.source "GuardedBy.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/checkerframework/checker/lock/qual/GuardedBy;
        value = {}
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

.annotation runtime Lorg/checkerframework/framework/qual/DefaultFor;
    value = {
        .enum Lorg/checkerframework/framework/qual/TypeUseLocation;->EXCEPTION_PARAMETER:Lorg/checkerframework/framework/qual/TypeUseLocation;,
        .enum Lorg/checkerframework/framework/qual/TypeUseLocation;->UPPER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;
    }
.end annotation

.annotation runtime Lorg/checkerframework/framework/qual/DefaultInUncheckedCodeFor;
    value = {
        .enum Lorg/checkerframework/framework/qual/TypeUseLocation;->PARAMETER:Lorg/checkerframework/framework/qual/TypeUseLocation;
    }
.end annotation

.annotation runtime Lorg/checkerframework/framework/qual/DefaultQualifierInHierarchy;
.end annotation

.annotation runtime Lorg/checkerframework/framework/qual/ImplicitFor;
    typeNames = {
        Ljava/lang/String;
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
        Lorg/checkerframework/checker/lock/qual/GuardedByUnknown;
    }
.end annotation


# virtual methods
.method public abstract value()[Ljava/lang/String;
.end method
