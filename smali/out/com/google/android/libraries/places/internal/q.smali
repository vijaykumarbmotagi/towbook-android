.class public final Lcom/google/android/libraries/places/internal/q;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field private final synthetic b:Lcom/google/android/libraries/places/internal/dm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/libraries/places/internal/dm;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/q;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/q;->b:Lcom/google/android/libraries/places/internal/dm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/graphics/Bitmap;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")Z"
        }
    .end annotation

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/q;->b:Lcom/google/android/libraries/places/internal/dm;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/dm;->a(Landroid/graphics/Bitmap;)Lcom/google/android/libraries/places/internal/dm;

    .line 10
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/q;->b:Lcom/google/android/libraries/places/internal/dm;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/dm;->a()Lcom/google/android/libraries/places/internal/s;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/q;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z
    :try_end_10
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_10} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_10} :catch_12

    const/4 p1, 0x1

    return p1

    :catch_12
    move-exception p1

    .line 14
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 15
    throw p1
.end method


# virtual methods
.method public final onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .registers 5
    .param p1    # Lcom/bumptech/glide/load/engine/GlideException;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/Bitmap;",
            ">;Z)Z"
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/q;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 3
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/k;->a(Lcom/bumptech/glide/load/engine/GlideException;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    .line 4
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z
    :try_end_9
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_9} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_b

    const/4 p1, 0x1

    return p1

    :catch_b
    move-exception p1

    .line 7
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 8
    throw p1
.end method

.method public final synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .registers 6

    .line 16
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/q;->a(Landroid/graphics/Bitmap;)Z

    move-result p1

    return p1
.end method
