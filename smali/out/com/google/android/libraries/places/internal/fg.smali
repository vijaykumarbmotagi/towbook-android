.class public Lcom/google/android/libraries/places/internal/fg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/lm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/places/internal/lm;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .registers 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/16 v0, 0xd

    if-nez p0, :cond_5

    return v0

    :cond_5
    const/4 v1, -0x1

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_66

    goto :goto_54

    :sswitch_f
    const-string v2, "OVER_QUERY_LIMIT"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_54

    const/4 v1, 0x2

    goto :goto_54

    :sswitch_19
    const-string v2, "UNKNOWN_ERROR"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_54

    const/4 v1, 0x6

    goto :goto_54

    :sswitch_23
    const-string v2, "NOT_FOUND"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_54

    const/4 v1, 0x5

    goto :goto_54

    :sswitch_2d
    const-string v2, "OK"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_54

    const/4 v1, 0x0

    goto :goto_54

    :sswitch_37
    const-string v2, "ZERO_RESULTS"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_54

    const/4 v1, 0x1

    goto :goto_54

    :sswitch_41
    const-string v2, "INVALID_REQUEST"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_54

    const/4 v1, 0x4

    goto :goto_54

    :sswitch_4b
    const-string v2, "REQUEST_DENIED"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_54

    const/4 v1, 0x3

    :cond_54
    :goto_54
    packed-switch v1, :pswitch_data_84

    return v0

    :pswitch_58
    const/16 p0, 0x2335

    return p0

    :pswitch_5b
    const/16 p0, 0x2334

    return p0

    :pswitch_5e
    const/16 p0, 0x2333

    return p0

    :pswitch_61
    const/16 p0, 0x2332

    return p0

    :pswitch_64
    return v3

    nop

    :sswitch_data_66
    .sparse-switch
        -0x65375c95 -> :sswitch_4b
        -0x430e23f9 -> :sswitch_41
        -0x307cc2c1 -> :sswitch_37
        0x9dc -> :sswitch_2d
        0x3cfe1ed6 -> :sswitch_23
        0x69dc2d93 -> :sswitch_19
        0x6d2eae59 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_64
        :pswitch_64
        :pswitch_61
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
    .end packed-switch
.end method

.method public static a(Lcom/google/android/libraries/places/internal/av;Lcom/google/android/libraries/places/internal/et;Lcom/google/android/libraries/places/internal/ft;Lcom/google/android/libraries/places/internal/dh;)Lcom/google/android/libraries/places/internal/fj;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/fj;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/fj;-><init>(Lcom/google/android/libraries/places/internal/av;Lcom/google/android/libraries/places/internal/et;Lcom/google/android/libraries/places/internal/ft;Lcom/google/android/libraries/places/internal/dh;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    return-object p1
.end method

.method public static b(Ljava/lang/String;)Landroid/os/HandlerThread;
    .registers 2

    .line 14
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-object v0
.end method


# virtual methods
.method public synthetic b()Ljava/lang/Object;
    .registers 2

    .line 2
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method
