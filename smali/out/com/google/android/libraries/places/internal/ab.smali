.class final synthetic Lcom/google/android/libraries/places/internal/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field private final a:Lcom/google/android/libraries/places/internal/u;

.field private final b:Ljava/util/concurrent/atomic/AtomicLong;

.field private final c:Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/u;Ljava/util/concurrent/atomic/AtomicLong;Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/ab;->a:Lcom/google/android/libraries/places/internal/u;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/ab;->b:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/ab;->c:Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .registers 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/ab;->a:Lcom/google/android/libraries/places/internal/u;

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/ab;->b:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v3, v0, Lcom/google/android/libraries/places/internal/ab;->c:Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;

    move-object/from16 v4, p1

    check-cast v4, Landroid/location/Location;

    .line 2
    iget-object v5, v1, Lcom/google/android/libraries/places/internal/u;->d:Lcom/google/android/libraries/places/internal/a;

    invoke-interface {v5}, Lcom/google/android/libraries/places/internal/a;->a()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 3
    iget-object v2, v1, Lcom/google/android/libraries/places/internal/u;->a:Lcom/google/android/libraries/places/internal/fj;

    iget-object v1, v1, Lcom/google/android/libraries/places/internal/u;->b:Lcom/google/android/libraries/places/internal/j;

    .line 5
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-ge v5, v6, :cond_25

    .line 6
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto/16 :goto_ca

    .line 7
    :cond_25
    iget-object v5, v1, Lcom/google/android/libraries/places/internal/j;->b:Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_c6

    iget-object v5, v1, Lcom/google/android/libraries/places/internal/j;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-nez v5, :cond_33

    goto/16 :goto_c6

    .line 9
    :cond_33
    iget-object v5, v1, Lcom/google/android/libraries/places/internal/j;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_41

    .line 11
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto/16 :goto_ca

    .line 12
    :cond_41
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iget-object v8, v1, Lcom/google/android/libraries/places/internal/j;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    .line 14
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_50
    :goto_50
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanResult;

    .line 16
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-lt v10, v6, :cond_b6

    if-eqz v9, :cond_b6

    iget-object v10, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 17
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6d

    goto :goto_b6

    :cond_6d
    const-wide/16 v13, 0x3e8

    .line 19
    iget-object v10, v1, Lcom/google/android/libraries/places/internal/j;->c:Lcom/google/android/libraries/places/internal/a;

    invoke-interface {v10}, Lcom/google/android/libraries/places/internal/a;->a()J

    move-result-wide v15

    mul-long v15, v15, v13

    .line 20
    iget-wide v13, v9, Landroid/net/wifi/ScanResult;->timestamp:J

    sub-long v17, v15, v13

    .line 21
    sget-wide v13, Lcom/google/android/libraries/places/internal/j;->a:J

    cmp-long v10, v17, v13

    if-lez v10, :cond_83

    const/4 v10, 0x1

    goto :goto_84

    :cond_83
    const/4 v10, 0x0

    .line 22
    :goto_84
    iget-object v13, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-nez v13, :cond_90

    .line 24
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Null SSID."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_90
    const/16 v14, 0x5f

    .line 25
    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-ltz v14, :cond_b0

    .line 26
    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v13, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "_nomap"

    .line 27
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_ae

    const-string v14, "_optout"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_b0

    :cond_ae
    const/4 v13, 0x1

    goto :goto_b1

    :cond_b0
    const/4 v13, 0x0

    :goto_b1
    if-nez v10, :cond_b6

    if-nez v13, :cond_b6

    const/4 v12, 0x1

    :cond_b6
    :goto_b6
    if-eqz v12, :cond_50

    .line 31
    new-instance v10, Lcom/google/android/libraries/places/internal/fh;

    invoke-direct {v10, v8, v9}, Lcom/google/android/libraries/places/internal/fh;-><init>(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/ScanResult;)V

    .line 32
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_50

    .line 34
    :cond_c1
    invoke-static {v7}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_ca

    .line 8
    :cond_c6
    :goto_c6
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 35
    :goto_ca
    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/libraries/places/internal/fj;->a(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Landroid/location/Location;Lcom/google/common/collect/ImmutableList;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method
