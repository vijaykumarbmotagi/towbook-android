.class public interface abstract annotation Lafu/org/checkerframework/checker/units/qual/UnitsMultiple;
.super Ljava/lang/Object;
.source "UnitsMultiple.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lafu/org/checkerframework/checker/units/qual/UnitsMultiple;
        prefix = .enum Lafu/org/checkerframework/checker/units/qual/Prefix;->one:Lafu/org/checkerframework/checker/units/qual/Prefix;
    .end subannotation
.end annotation


# virtual methods
.method public abstract prefix()Lafu/org/checkerframework/checker/units/qual/Prefix;
.end method

.method public abstract quantity()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end method
