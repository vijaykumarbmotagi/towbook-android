.class public interface abstract annotation Lafu/org/checkerframework/framework/qual/ImplicitFor;
.super Ljava/lang/Object;
.source "ImplicitFor.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lafu/org/checkerframework/framework/qual/ImplicitFor;
        stringPatterns = {}
        treeClasses = {}
        trees = {}
        typeClasses = {}
        typeNames = {}
        types = {}
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract stringPatterns()[Ljava/lang/String;
.end method

.method public abstract treeClasses()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "+",
            "Lafu/com/sun/source/tree/Tree;",
            ">;"
        }
    .end annotation
.end method

.method public abstract trees()[Lafu/com/sun/source/tree/Tree$Kind;
.end method

.method public abstract typeClasses()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "+",
            "Lafu/org/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;"
        }
    .end annotation
.end method

.method public abstract typeNames()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract types()[Ljavax/lang/model/type/TypeKind;
.end method
