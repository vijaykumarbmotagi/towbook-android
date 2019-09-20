.class final Lcom/google/android/libraries/places/internal/hr;
.super Lcom/google/android/libraries/places/internal/ht;
.source "PG"


# instance fields
.field private a:I

.field private final b:I

.field private final synthetic c:Lcom/google/android/libraries/places/internal/hq;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/hq;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/hr;->c:Lcom/google/android/libraries/places/internal/hq;

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/ht;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/libraries/places/internal/hr;->a:I

    .line 3
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/hr;->c:Lcom/google/android/libraries/places/internal/hq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/hq;->a()I

    move-result p1

    iput p1, p0, Lcom/google/android/libraries/places/internal/hr;->b:I

    return-void
.end method


# virtual methods
.method public final a()B
    .registers 3

    .line 5
    iget v0, p0, Lcom/google/android/libraries/places/internal/hr;->a:I

    .line 6
    iget v1, p0, Lcom/google/android/libraries/places/internal/hr;->b:I

    if-lt v0, v1, :cond_c

    .line 7
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_c
    add-int/lit8 v1, v0, 0x1

    .line 8
    iput v1, p0, Lcom/google/android/libraries/places/internal/hr;->a:I

    .line 9
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/hr;->c:Lcom/google/android/libraries/places/internal/hq;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/hq;->b(I)B

    move-result v0

    return v0
.end method

.method public final hasNext()Z
    .registers 3

    .line 4
    iget v0, p0, Lcom/google/android/libraries/places/internal/hr;->a:I

    iget v1, p0, Lcom/google/android/libraries/places/internal/hr;->b:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method
