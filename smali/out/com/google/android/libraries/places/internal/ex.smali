.class final Lcom/google/android/libraries/places/internal/ex;
.super Landroid/database/DataSetObserver;
.source "PG"


# instance fields
.field private final synthetic a:Lcom/google/android/libraries/places/internal/ew;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/ew;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/ex;->a:Lcom/google/android/libraries/places/internal/ew;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .registers 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ex;->a:Lcom/google/android/libraries/places/internal/ew;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ex;->a:Lcom/google/android/libraries/places/internal/ew;

    .line 3
    iget v1, v1, Lcom/google/android/libraries/places/internal/ew;->c:I

    .line 5
    iput v1, v0, Lcom/google/android/libraries/places/internal/ew;->b:I

    .line 7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ex;->a:Lcom/google/android/libraries/places/internal/ew;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ex;->a:Lcom/google/android/libraries/places/internal/ew;

    .line 8
    iget-object v1, v1, Lcom/google/android/libraries/places/internal/ew;->a:Lcom/google/android/libraries/places/internal/el;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/el;->getCount()I

    move-result v1

    .line 10
    iput v1, v0, Lcom/google/android/libraries/places/internal/ew;->c:I
    :try_end_14
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_14} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception v0

    .line 14
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 15
    throw v0
.end method

.method public final onInvalidated()V
    .registers 4

    .line 16
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ex;->a:Lcom/google/android/libraries/places/internal/ew;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ex;->a:Lcom/google/android/libraries/places/internal/ew;

    const/4 v2, 0x0

    .line 17
    iput v2, v1, Lcom/google/android/libraries/places/internal/ew;->c:I

    .line 19
    iput v2, v0, Lcom/google/android/libraries/places/internal/ew;->b:I

    return-void
.end method
