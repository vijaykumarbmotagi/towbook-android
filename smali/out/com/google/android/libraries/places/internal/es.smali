.class public final Lcom/google/android/libraries/places/internal/es;
.super Ljava/lang/Object;
.source "PG"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
    otherwise = 0x3
.end annotation


# static fields
.field public static final f:Lcom/google/android/libraries/places/internal/es;

.field public static final g:Lcom/google/android/libraries/places/internal/es;


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/gms/common/api/Status;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/AutocompletePrediction;",
            ">;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:Lcom/google/android/libraries/places/api/model/Place;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 23
    new-instance v6, Lcom/google/android/libraries/places/internal/es;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const-string v0, "Place Fields must not be empty."

    const/16 v1, 0x2334

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    const/4 v1, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/es;-><init>(ILcom/google/android/gms/common/api/Status;Ljava/util/List;ILcom/google/android/libraries/places/api/model/Place;)V

    sput-object v6, Lcom/google/android/libraries/places/internal/es;->f:Lcom/google/android/libraries/places/internal/es;

    .line 25
    new-instance v0, Lcom/google/android/libraries/places/internal/es;

    .line 26
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v10

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/google/android/libraries/places/internal/es;-><init>(ILcom/google/android/gms/common/api/Status;Ljava/util/List;ILcom/google/android/libraries/places/api/model/Place;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/es;->g:Lcom/google/android/libraries/places/internal/es;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/api/Status;Ljava/util/List;ILcom/google/android/libraries/places/api/model/Place;)V
    .registers 6
    .param p2    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/libraries/places/api/model/Place;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/common/api/Status;",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/AutocompletePrediction;",
            ">;I",
            "Lcom/google/android/libraries/places/api/model/Place;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/google/android/libraries/places/internal/es;->a:I

    .line 15
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/es;->b:Lcom/google/android/gms/common/api/Status;

    .line 16
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/es;->c:Ljava/util/List;

    .line 17
    iput p4, p0, Lcom/google/android/libraries/places/internal/es;->d:I

    .line 18
    iput-object p5, p0, Lcom/google/android/libraries/places/internal/es;->e:Lcom/google/android/libraries/places/api/model/Place;

    return-void
.end method

.method static a(Lcom/google/android/libraries/places/internal/es;Lcom/google/android/gms/common/api/Status;)Lcom/google/android/libraries/places/internal/es;
    .registers 10

    .line 10
    iget v0, p0, Lcom/google/android/libraries/places/internal/es;->a:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    return-object p0

    .line 12
    :cond_6
    new-instance v0, Lcom/google/android/libraries/places/internal/es;

    const/4 v3, 0x6

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/es;->c:Ljava/util/List;

    iget v6, p0, Lcom/google/android/libraries/places/internal/es;->d:I

    const/4 v7, 0x0

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/libraries/places/internal/es;-><init>(ILcom/google/android/gms/common/api/Status;Ljava/util/List;ILcom/google/android/libraries/places/api/model/Place;)V

    return-object v0
.end method

.method static a(Lcom/google/android/libraries/places/internal/es;Lcom/google/android/libraries/places/api/model/Place;)Lcom/google/android/libraries/places/internal/es;
    .registers 10

    .line 7
    iget v0, p0, Lcom/google/android/libraries/places/internal/es;->a:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    return-object p0

    .line 9
    :cond_6
    new-instance v0, Lcom/google/android/libraries/places/internal/es;

    const/4 v3, 0x7

    new-instance v4, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/es;->c:Ljava/util/List;

    iget v6, p0, Lcom/google/android/libraries/places/internal/es;->d:I

    move-object v2, v0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/libraries/places/internal/es;-><init>(ILcom/google/android/gms/common/api/Status;Ljava/util/List;ILcom/google/android/libraries/places/api/model/Place;)V

    return-object v0
.end method

.method public static a(Ljava/util/List;)Lcom/google/android/libraries/places/internal/es;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/AutocompletePrediction;",
            ">;)",
            "Lcom/google/android/libraries/places/internal/es;"
        }
    .end annotation

    .line 1
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;->getPlaceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 4
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 6
    :cond_27
    new-instance p0, Lcom/google/android/libraries/places/internal/es;

    const/4 v1, 0x4

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/es;-><init>(ILcom/google/android/gms/common/api/Status;Ljava/util/List;ILcom/google/android/libraries/places/api/model/Place;)V

    return-object p0
.end method


# virtual methods
.method public final a()Z
    .registers 2

    .line 20
    iget v0, p0, Lcom/google/android/libraries/places/internal/es;->a:I

    packed-switch v0, :pswitch_data_a

    const/4 v0, 0x0

    return v0

    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x5
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
