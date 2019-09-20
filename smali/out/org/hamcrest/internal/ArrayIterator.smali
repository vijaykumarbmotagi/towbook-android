.class public Lorg/hamcrest/internal/ArrayIterator;
.super Ljava/lang/Object;
.source "ArrayIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final array:Ljava/lang/Object;

.field private currentIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lorg/hamcrest/internal/ArrayIterator;->currentIndex:I

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_18

    .line 12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not an array"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_18
    iput-object p1, p0, Lorg/hamcrest/internal/ArrayIterator;->array:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 19
    iget v0, p0, Lorg/hamcrest/internal/ArrayIterator;->currentIndex:I

    iget-object v1, p0, Lorg/hamcrest/internal/ArrayIterator;->array:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4

    .line 24
    iget-object v0, p0, Lorg/hamcrest/internal/ArrayIterator;->array:Ljava/lang/Object;

    iget v1, p0, Lorg/hamcrest/internal/ArrayIterator;->currentIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/hamcrest/internal/ArrayIterator;->currentIndex:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    .line 29
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "cannot remove items from an array"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method