.class final Lcom/google/android/libraries/places/internal/kw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic b:I

.field private final synthetic c:Lcom/google/android/libraries/places/internal/kv;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/kv;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/kw;->c:Lcom/google/android/libraries/places/internal/kv;

    iput p2, p0, Lcom/google/android/libraries/places/internal/kw;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/kw;->c:Lcom/google/android/libraries/places/internal/kv;

    .line 3
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/kv;->a:Lcom/google/android/libraries/places/internal/iz;

    .line 4
    iget p2, p0, Lcom/google/android/libraries/places/internal/kw;->b:I

    invoke-interface {p1, p2}, Lcom/google/android/libraries/places/internal/iz;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/kw;->a:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public final synthetic add(Ljava/lang/Object;)V
    .registers 2

    .line 10
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final hasNext()Z
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kw;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final hasPrevious()Z
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kw;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kw;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final nextIndex()I
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kw;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public final synthetic previous()Ljava/lang/Object;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kw;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final previousIndex()I
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kw;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public final remove()V
    .registers 2

    .line 9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final synthetic set(Ljava/lang/Object;)V
    .registers 2

    .line 11
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
