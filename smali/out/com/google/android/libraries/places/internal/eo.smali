.class public final Lcom/google/android/libraries/places/internal/eo;
.super Landroid/widget/Filter;
.source "PG"


# instance fields
.field public final synthetic a:Lcom/google/android/libraries/places/internal/el;

.field private b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/el;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/eo;->a:Lcom/google/android/libraries/places/internal/el;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/android/libraries/places/internal/es;)Landroid/widget/Filter$FilterResults;
    .registers 2

    .line 20
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 21
    iput-object p0, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 22
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/es;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    iput p0, v0, Landroid/widget/Filter$FilterResults;->count:I

    return-object v0
.end method


# virtual methods
.method public final convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3

    .line 16
    instance-of v0, p1, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    if-nez v0, :cond_9

    .line 17
    invoke-super {p0, p1}, Landroid/widget/Filter;->convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 18
    :cond_9
    check-cast p1, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;->getPrimaryText(Landroid/text/style/CharacterStyle;)Landroid/text/SpannableString;

    move-result-object p1

    return-object p1
.end method

.method public final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 9
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/eo;->b:Ljava/lang/Runnable;

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4
    sget-object p1, Lcom/google/android/libraries/places/internal/es;->g:Lcom/google/android/libraries/places/internal/es;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/eo;->a(Lcom/google/android/libraries/places/internal/es;)Landroid/widget/Filter$FilterResults;

    move-result-object p1

    return-object p1

    .line 5
    :cond_10
    new-instance v0, Lcom/google/android/libraries/places/internal/ep;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/ep;-><init>(Lcom/google/android/libraries/places/internal/eo;Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/eo;->b:Ljava/lang/Runnable;

    .line 6
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/eo;->a:Lcom/google/android/libraries/places/internal/el;

    .line 7
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/el;->d:Lcom/google/android/libraries/places/internal/es;

    .line 9
    new-instance v6, Lcom/google/android/libraries/places/internal/es;

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/google/android/libraries/places/internal/es;->c:Ljava/util/List;

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/es;-><init>(ILcom/google/android/gms/common/api/Status;Ljava/util/List;ILcom/google/android/libraries/places/api/model/Place;)V

    .line 10
    invoke-static {v6}, Lcom/google/android/libraries/places/internal/eo;->a(Lcom/google/android/libraries/places/internal/es;)Landroid/widget/Filter$FilterResults;

    move-result-object p1

    return-object p1
.end method

.method public final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 3

    .line 11
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/eo;->a:Lcom/google/android/libraries/places/internal/el;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/libraries/places/internal/es;

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/el;->a(Lcom/google/android/libraries/places/internal/es;)V

    .line 12
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/eo;->b:Ljava/lang/Runnable;

    if-eqz p1, :cond_15

    .line 13
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/eo;->b:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/eo;->b:Ljava/lang/Runnable;

    :cond_15
    return-void
.end method
