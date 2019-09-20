.class public final Lcom/google/android/libraries/places/internal/ew;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "PG"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/libraries/places/internal/el;

.field public b:I

.field public c:I

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/el;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/ew;->a:Lcom/google/android/libraries/places/internal/el;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/ew;->d:Ljava/util/Map;

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/ew;->setHasStableIds(Z)V

    .line 5
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/ew;->a:Lcom/google/android/libraries/places/internal/el;

    new-instance v0, Lcom/google/android/libraries/places/internal/ex;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/ex;-><init>(Lcom/google/android/libraries/places/internal/ew;)V

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/el;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/libraries/places/internal/eo;
    .registers 2

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ew;->a:Lcom/google/android/libraries/places/internal/el;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/el;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/eo;
    :try_end_8
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    .line 68
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 69
    throw v0
.end method

.method public final b()Lcom/google/android/libraries/places/internal/es;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ew;->a:Lcom/google/android/libraries/places/internal/el;

    .line 71
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/el;->d:Lcom/google/android/libraries/places/internal/es;

    return-object v0
.end method

.method public final synthetic getFilter()Landroid/widget/Filter;
    .registers 2

    .line 73
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ew;->a()Lcom/google/android/libraries/places/internal/eo;

    move-result-object v0

    return-object v0
.end method

.method public final getItemCount()I
    .registers 2

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ew;->a:Lcom/google/android/libraries/places/internal/el;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/el;->getCount()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_6} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    .line 56
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 57
    throw v0
.end method

.method public final getItemId(I)J
    .registers 4

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ew;->a:Lcom/google/android/libraries/places/internal/el;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/el;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    const-wide/16 v0, -0x1

    return-wide v0

    .line 60
    :cond_c
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ew;->a:Lcom/google/android/libraries/places/internal/el;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/el;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    .line 61
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;->getPlaceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1
    :try_end_1c
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_1c} :catch_1e
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_1c} :catch_1e

    int-to-long v0, p1

    return-wide v0

    :catch_1e
    move-exception p1

    .line 64
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 65
    throw p1
.end method

.method public final getItemViewType(I)I
    .registers 3

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ew;->a:Lcom/google/android/libraries/places/internal/el;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/el;->getItemViewType(I)I

    move-result p1
    :try_end_6
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_6} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    :catch_7
    move-exception p1

    .line 21
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 22
    throw p1
.end method

.method public final onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 6

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ew;->a:Lcom/google/android/libraries/places/internal/el;

    invoke-virtual {v0, p2}, Lcom/google/android/libraries/places/internal/el;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_3c

    goto :goto_36

    .line 24
    :pswitch_a
    iget v0, p0, Lcom/google/android/libraries/places/internal/ew;->b:I

    if-nez v0, :cond_14

    iget v0, p0, Lcom/google/android/libraries/places/internal/ew;->c:I

    if-lez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 25
    :goto_15
    check-cast p1, Lcom/google/android/libraries/places/internal/fd;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ew;->a:Lcom/google/android/libraries/places/internal/el;

    .line 26
    iput p2, p1, Lcom/google/android/libraries/places/internal/fd;->a:I

    .line 27
    iput-boolean v0, p1, Lcom/google/android/libraries/places/internal/fd;->b:Z

    .line 28
    iget-object v0, p1, Lcom/google/android/libraries/places/internal/fd;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0, p2}, Lcom/google/android/libraries/places/internal/el;->a(Landroid/view/View;I)V

    .line 29
    iget-object v0, p1, Lcom/google/android/libraries/places/internal/fd;->itemView:Landroid/view/View;

    new-instance v2, Lcom/google/android/libraries/places/internal/fe;

    invoke-direct {v2, p1, v1, p2}, Lcom/google/android/libraries/places/internal/fe;-><init>(Lcom/google/android/libraries/places/internal/fd;Lcom/google/android/libraries/places/internal/el;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 31
    :pswitch_2d
    check-cast p1, Lcom/google/android/libraries/places/internal/fc;

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/ew;->a:Lcom/google/android/libraries/places/internal/el;

    .line 32
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/fc;->itemView:Landroid/view/View;

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/el;->a(Landroid/view/View;)V
    :try_end_36
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_36} :catch_37
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_36} :catch_37

    :goto_36
    return-void

    :catch_37
    move-exception p1

    .line 35
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 36
    throw p1

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_a
    .end packed-switch
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 5

    .line 7
    :try_start_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_30

    .line 15
    new-instance p1, Ljava/lang/IllegalStateException;

    goto :goto_27

    .line 9
    :pswitch_f
    sget p2, Lcom/google/android/libraries/places/R$layout;->places_autocomplete_item_prediction:I

    .line 10
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 11
    new-instance p2, Lcom/google/android/libraries/places/internal/fd;

    invoke-direct {p2, p1}, Lcom/google/android/libraries/places/internal/fd;-><init>(Landroid/view/View;)V

    return-object p2

    .line 12
    :pswitch_1b
    sget p2, Lcom/google/android/libraries/places/R$layout;->places_autocomplete_item_powered_by_google:I

    .line 13
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 14
    new-instance p2, Lcom/google/android/libraries/places/internal/fc;

    invoke-direct {p2, p1}, Lcom/google/android/libraries/places/internal/fc;-><init>(Landroid/view/View;)V

    return-object p2

    .line 15
    :goto_27
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_2b
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_2b} :catch_2b
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_2b} :catch_2b

    :catch_2b
    move-exception p1

    .line 17
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 18
    throw p1

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_f
    .end packed-switch
.end method

.method public final registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .registers 4

    .line 38
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 39
    new-instance v0, Lcom/google/android/libraries/places/internal/ey;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/places/internal/ey;-><init>(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 40
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ew;->a:Lcom/google/android/libraries/places/internal/el;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/el;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 41
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ew;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p1

    .line 44
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 45
    throw p1
.end method

.method public final unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .registers 4

    .line 46
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 47
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ew;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 48
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ew;->a:Lcom/google/android/libraries/places/internal/el;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/ew;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/el;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 49
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ew;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_1d} :catch_1e

    :cond_1d
    return-void

    :catch_1e
    move-exception p1

    .line 52
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 53
    throw p1
.end method
