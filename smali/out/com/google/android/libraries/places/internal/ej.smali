.class public final Lcom/google/android/libraries/places/internal/ej;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "PG"


# instance fields
.field private final synthetic a:Lcom/google/android/libraries/places/internal/ff;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/ff;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/ej;->a:Lcom/google/android/libraries/places/internal/ff;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .registers 3

    const/4 p1, 0x1

    if-ne p2, p1, :cond_e

    .line 3
    :try_start_3
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/ej;->a:Lcom/google/android/libraries/places/internal/ff;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ff;->i()V
    :try_end_8
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_8} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_8} :catch_9

    goto :goto_e

    :catch_9
    move-exception p1

    .line 6
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 7
    throw p1

    :cond_e
    :goto_e
    return-void
.end method
