.class final Lcom/google/android/libraries/places/internal/ey;
.super Landroid/database/DataSetObserver;
.source "PG"


# instance fields
.field private final synthetic a:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/ey;->a:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .registers 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ey;->a:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onChanged()V
    :try_end_5
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_5} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 5
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 6
    throw v0
.end method

.method public final onInvalidated()V
    .registers 2

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ey;->a:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onChanged()V
    :try_end_5
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_5} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 10
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 11
    throw v0
.end method
