.class public Lcom/google/android/libraries/places/internal/dj;
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


# instance fields
.field public final a:Lcom/google/android/gms/clearcut/ClearcutLogger;

.field public final b:Lcom/google/android/libraries/places/internal/dn;

.field public final c:Lcom/google/android/libraries/places/internal/dq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/clearcut/ClearcutLogger;Lcom/google/android/libraries/places/internal/dn;Lcom/google/android/libraries/places/internal/dq;)V
    .registers 4

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/dj;->a:Lcom/google/android/gms/clearcut/ClearcutLogger;

    .line 566
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/dj;->b:Lcom/google/android/libraries/places/internal/dn;

    .line 567
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/dj;->c:Lcom/google/android/libraries/places/internal/dq;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/clearcut/ClearcutLogger;
    .registers 2

    const-string v0, "LE"

    .line 3
    invoke-static {p0, v0}, Lcom/google/android/gms/clearcut/ClearcutLogger;->anonymousLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/clearcut/ClearcutLogger;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 5
    invoke-static {p0, v0}, Lcom/google/android/libraries/places/internal/jh;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/clearcut/ClearcutLogger;

    return-object p0
.end method

.method public static a(Ljava/lang/Exception;)Lcom/google/android/gms/common/api/ApiException;
    .registers 4

    .line 630
    instance-of v0, p0, Lcom/google/android/gms/common/api/ApiException;

    if-eqz v0, :cond_7

    .line 631
    check-cast p0, Lcom/google/android/gms/common/api/ApiException;

    return-object p0

    .line 632
    :cond_7
    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xd

    .line 633
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/internal/gd$c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseT::",
            "Lcom/google/android/libraries/places/internal/ax;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TResponseT;>;)",
            "Lcom/google/android/libraries/places/internal/gd$c;"
        }
    .end annotation

    .line 623
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 624
    sget-object p1, Lcom/google/android/libraries/places/internal/gd$c;->b:Lcom/google/android/libraries/places/internal/gd$c;

    return-object p1

    .line 625
    :cond_9
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/dj;->a(Ljava/lang/Exception;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    .line 626
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result p1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_22

    const/16 v0, 0xf

    if-eq p1, v0, :cond_1f

    .line 629
    sget-object p1, Lcom/google/android/libraries/places/internal/gd$c;->a:Lcom/google/android/libraries/places/internal/gd$c;

    return-object p1

    .line 628
    :cond_1f
    sget-object p1, Lcom/google/android/libraries/places/internal/gd$c;->c:Lcom/google/android/libraries/places/internal/gd$c;

    return-object p1

    .line 627
    :cond_22
    sget-object p1, Lcom/google/android/libraries/places/internal/gd$c;->d:Lcom/google/android/libraries/places/internal/gd$c;

    return-object p1
.end method

.method public a()Lcom/google/android/libraries/places/internal/hf$a;
    .registers 7

    .line 569
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/dj;->c:Lcom/google/android/libraries/places/internal/dq;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/dq;->c()Ljava/util/Locale;

    move-result-object v0

    .line 570
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 571
    sget-object v2, Lcom/google/android/libraries/places/internal/hf;->j:Lcom/google/android/libraries/places/internal/hf;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/ij;->f()Lcom/google/android/libraries/places/internal/ij$a;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/internal/hf$a;

    .line 572
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 573
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 574
    iget-object v4, v2, Lcom/google/android/libraries/places/internal/hf$a;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v4, Lcom/google/android/libraries/places/internal/hf;

    if-nez v3, :cond_25

    .line 577
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 578
    :cond_25
    iget v5, v4, Lcom/google/android/libraries/places/internal/hf;->a:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Lcom/google/android/libraries/places/internal/hf;->a:I

    .line 579
    iput-object v3, v4, Lcom/google/android/libraries/places/internal/hf;->c:Ljava/lang/String;

    .line 582
    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 583
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 584
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 585
    iget-object v1, v2, Lcom/google/android/libraries/places/internal/hf$a;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v1, Lcom/google/android/libraries/places/internal/hf;

    if-nez v0, :cond_46

    .line 588
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 589
    :cond_46
    iget v3, v1, Lcom/google/android/libraries/places/internal/hf;->a:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v1, Lcom/google/android/libraries/places/internal/hf;->a:I

    .line 590
    iput-object v0, v1, Lcom/google/android/libraries/places/internal/hf;->d:Ljava/lang/String;

    :cond_4e
    return-object v2
.end method

.method public a(Lcom/google/android/gms/tasks/Task;JJ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FetchPhotoResponse;",
            ">;JJ)V"
        }
    .end annotation

    .line 489
    sget-object v0, Lcom/google/android/libraries/places/internal/hb;->c:Lcom/google/android/libraries/places/internal/hb;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij;->f()Lcom/google/android/libraries/places/internal/ij$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/hb$a;

    .line 490
    sget-object v1, Lcom/google/android/libraries/places/internal/hb$b;->a:Lcom/google/android/libraries/places/internal/hb$b;

    .line 491
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 492
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/hb$a;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v2, Lcom/google/android/libraries/places/internal/hb;

    if-nez v1, :cond_19

    .line 495
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 496
    :cond_19
    iget v3, v2, Lcom/google/android/libraries/places/internal/hb;->a:I

    const/4 v4, 0x1

    or-int/2addr v3, v4

    iput v3, v2, Lcom/google/android/libraries/places/internal/hb;->a:I

    .line 498
    iget v1, v1, Lcom/google/android/libraries/places/internal/hb$b;->b:I

    .line 499
    iput v1, v2, Lcom/google/android/libraries/places/internal/hb;->b:I

    .line 503
    iget-boolean v1, v0, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    if-eqz v1, :cond_2a

    .line 504
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    goto :goto_33

    .line 505
    :cond_2a
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/ij;->e()V

    .line 506
    iput-boolean v4, v0, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    .line 507
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    .line 508
    :goto_33
    check-cast v0, Lcom/google/android/libraries/places/internal/ij;

    .line 509
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij;->g()Z

    move-result v1

    if-nez v1, :cond_41

    .line 511
    new-instance p1, Lcom/google/android/libraries/places/internal/ks;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ks;-><init>()V

    .line 512
    throw p1

    .line 514
    :cond_41
    check-cast v0, Lcom/google/android/libraries/places/internal/ij;

    check-cast v0, Lcom/google/android/libraries/places/internal/hb;

    .line 515
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/dj;->b:Lcom/google/android/libraries/places/internal/dn;

    .line 516
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/dm;->a(Lcom/google/android/libraries/places/internal/dn;)Lcom/google/android/libraries/places/internal/gr$a;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/internal/gr$b;->b:Lcom/google/android/libraries/places/internal/gr$b;

    .line 517
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/gr$a;->a(Lcom/google/android/libraries/places/internal/gr$b;)Lcom/google/android/libraries/places/internal/gr$a;

    move-result-object v1

    .line 519
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 520
    iget-object v2, v1, Lcom/google/android/libraries/places/internal/gr$a;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v2, Lcom/google/android/libraries/places/internal/gr;

    if-nez v0, :cond_60

    .line 523
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 524
    :cond_60
    iput-object v0, v2, Lcom/google/android/libraries/places/internal/gr;->g:Lcom/google/android/libraries/places/internal/hb;

    .line 525
    iget v0, v2, Lcom/google/android/libraries/places/internal/gr;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, v2, Lcom/google/android/libraries/places/internal/gr;->a:I

    .line 529
    iget-boolean v0, v1, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    if-eqz v0, :cond_6f

    .line 530
    iget-object v0, v1, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    goto :goto_78

    .line 531
    :cond_6f
    iget-object v0, v1, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij;->e()V

    .line 532
    iput-boolean v4, v1, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    .line 533
    iget-object v0, v1, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    .line 534
    :goto_78
    check-cast v0, Lcom/google/android/libraries/places/internal/ij;

    .line 535
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij;->g()Z

    move-result v1

    if-nez v1, :cond_86

    .line 537
    new-instance p1, Lcom/google/android/libraries/places/internal/ks;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ks;-><init>()V

    .line 538
    throw p1

    .line 540
    :cond_86
    check-cast v0, Lcom/google/android/libraries/places/internal/ij;

    check-cast v0, Lcom/google/android/libraries/places/internal/gr;

    .line 541
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/dj;->a(Lcom/google/android/libraries/places/internal/gr;)V

    .line 542
    invoke-static {}, Lcom/google/android/libraries/places/internal/gd;->a()Lcom/google/android/libraries/places/internal/gd$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/gd$b;->d:Lcom/google/android/libraries/places/internal/gd$b;

    .line 543
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/gd$a;->a(Lcom/google/android/libraries/places/internal/gd$b;)Lcom/google/android/libraries/places/internal/gd$a;

    move-result-object v0

    .line 544
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/dj;->a(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/internal/gd$c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/gd$a;->a(Lcom/google/android/libraries/places/internal/gd$c;)Lcom/google/android/libraries/places/internal/gd$a;

    move-result-object p1

    sub-long v0, p4, p2

    long-to-int p2, v0

    .line 545
    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/gd$a;->a(I)Lcom/google/android/libraries/places/internal/gd$a;

    move-result-object p1

    .line 550
    iget-boolean p2, p1, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    if-eqz p2, :cond_ad

    .line 551
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    goto :goto_b6

    .line 552
    :cond_ad
    iget-object p2, p1, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/ij;->e()V

    .line 553
    iput-boolean v4, p1, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    .line 554
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    .line 555
    :goto_b6
    check-cast p1, Lcom/google/android/libraries/places/internal/ij;

    .line 556
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ij;->g()Z

    move-result p2

    if-nez p2, :cond_c4

    .line 558
    new-instance p1, Lcom/google/android/libraries/places/internal/ks;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ks;-><init>()V

    .line 559
    throw p1

    .line 561
    :cond_c4
    check-cast p1, Lcom/google/android/libraries/places/internal/ij;

    check-cast p1, Lcom/google/android/libraries/places/internal/gd;

    .line 562
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/dj;->a(Lcom/google/android/libraries/places/internal/gd;)V

    return-void
.end method

.method public a(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;Lcom/google/android/gms/tasks/Task;JJ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;",
            ">;JJ)V"
        }
    .end annotation

    .line 174
    sget-object v0, Lcom/google/android/libraries/places/internal/gw;->c:Lcom/google/android/libraries/places/internal/gw;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij;->f()Lcom/google/android/libraries/places/internal/ij$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/gw$a;

    .line 177
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 178
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/gw$a;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v1, Lcom/google/android/libraries/places/internal/gw;

    .line 180
    iget v2, v1, Lcom/google/android/libraries/places/internal/gw;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/google/android/libraries/places/internal/gw;->a:I

    .line 182
    invoke-static {}, Lcom/google/android/libraries/places/internal/he;->a()Lcom/google/android/libraries/places/internal/he$a;

    move-result-object v1

    .line 183
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getPlaceFields()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/aq;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/he$a;->a(Ljava/lang/Iterable;)Lcom/google/android/libraries/places/internal/he$a;

    move-result-object v1

    .line 188
    iget-boolean v2, v1, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2d

    .line 189
    iget-object v1, v1, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    goto :goto_36

    .line 190
    :cond_2d
    iget-object v2, v1, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/ij;->e()V

    .line 191
    iput-boolean v3, v1, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    .line 192
    iget-object v1, v1, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    .line 193
    :goto_36
    check-cast v1, Lcom/google/android/libraries/places/internal/ij;

    .line 194
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/ij;->g()Z

    move-result v2

    if-nez v2, :cond_44

    .line 196
    new-instance p1, Lcom/google/android/libraries/places/internal/ks;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ks;-><init>()V

    .line 197
    throw p1

    .line 199
    :cond_44
    check-cast v1, Lcom/google/android/libraries/places/internal/ij;

    check-cast v1, Lcom/google/android/libraries/places/internal/he;

    .line 201
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 202
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/gw$a;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v2, Lcom/google/android/libraries/places/internal/gw;

    if-nez v1, :cond_57

    .line 205
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 206
    :cond_57
    iput-object v1, v2, Lcom/google/android/libraries/places/internal/gw;->b:Lcom/google/android/libraries/places/internal/he;

    .line 207
    iget v1, v2, Lcom/google/android/libraries/places/internal/gw;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v2, Lcom/google/android/libraries/places/internal/gw;->a:I

    .line 211
    iget-boolean v1, v0, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    if-eqz v1, :cond_66

    .line 212
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    goto :goto_6f

    .line 213
    :cond_66
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/ij;->e()V

    .line 214
    iput-boolean v3, v0, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    .line 215
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    .line 216
    :goto_6f
    check-cast v0, Lcom/google/android/libraries/places/internal/ij;

    .line 217
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij;->g()Z

    move-result v1

    if-nez v1, :cond_7d

    .line 219
    new-instance p1, Lcom/google/android/libraries/places/internal/ks;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ks;-><init>()V

    .line 220
    throw p1

    .line 222
    :cond_7d
    check-cast v0, Lcom/google/android/libraries/places/internal/ij;

    check-cast v0, Lcom/google/android/libraries/places/internal/gw;

    .line 224
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/dj;->a()Lcom/google/android/libraries/places/internal/hf$a;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/internal/hf$b;->a:Lcom/google/android/libraries/places/internal/hf$b;

    .line 225
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/hf$a;->a(Lcom/google/android/libraries/places/internal/hf$b;)Lcom/google/android/libraries/places/internal/hf$a;

    move-result-object v1

    .line 227
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 228
    iget-object v2, v1, Lcom/google/android/libraries/places/internal/hf$a;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v2, Lcom/google/android/libraries/places/internal/hf;

    if-nez v0, :cond_9a

    .line 231
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 232
    :cond_9a
    iput-object v0, v2, Lcom/google/android/libraries/places/internal/hf;->h:Lcom/google/android/libraries/places/internal/gw;

    .line 233
    iget v0, v2, Lcom/google/android/libraries/places/internal/hf;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, v2, Lcom/google/android/libraries/places/internal/hf;->a:I

    .line 237
    iget-boolean v0, v1, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    if-eqz v0, :cond_a9

    .line 238
    iget-object v0, v1, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    goto :goto_b2

    .line 239
    :cond_a9
    iget-object v0, v1, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij;->e()V

    .line 240
    iput-boolean v3, v1, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    .line 241
    iget-object v0, v1, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    .line 242
    :goto_b2
    check-cast v0, Lcom/google/android/libraries/places/internal/ij;

    .line 243
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij;->g()Z

    move-result v1

    if-nez v1, :cond_c0

    .line 245
    new-instance p1, Lcom/google/android/libraries/places/internal/ks;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ks;-><init>()V

    .line 246
    throw p1

    .line 248
    :cond_c0
    check-cast v0, Lcom/google/android/libraries/places/internal/ij;

    check-cast v0, Lcom/google/android/libraries/places/internal/hf;

    .line 249
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/dj;->b:Lcom/google/android/libraries/places/internal/dn;

    .line 250
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/dm;->a(Lcom/google/android/libraries/places/internal/dn;)Lcom/google/android/libraries/places/internal/gr$a;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/internal/gr$b;->a:Lcom/google/android/libraries/places/internal/gr$b;

    .line 251
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/gr$a;->a(Lcom/google/android/libraries/places/internal/gr$b;)Lcom/google/android/libraries/places/internal/gr$a;

    move-result-object v1

    .line 252
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/gr$a;->a(Lcom/google/android/libraries/places/internal/hf;)Lcom/google/android/libraries/places/internal/gr$a;

    move-result-object v0

    .line 253
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getSessionToken()Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    move-result-object v1

    if-eqz v1, :cond_e5

    .line 254
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getSessionToken()Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/gr$a;->a(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/gr$a;

    .line 259
    :cond_e5
    iget-boolean p1, v0, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    if-eqz p1, :cond_ec

    .line 260
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    goto :goto_f5

    .line 261
    :cond_ec
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ij;->e()V

    .line 262
    iput-boolean v3, v0, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    .line 263
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    .line 264
    :goto_f5
    check-cast p1, Lcom/google/android/libraries/places/internal/ij;

    .line 265
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ij;->g()Z

    move-result v0

    if-nez v0, :cond_103

    .line 267
    new-instance p1, Lcom/google/android/libraries/places/internal/ks;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ks;-><init>()V

    .line 268
    throw p1

    .line 270
    :cond_103
    check-cast p1, Lcom/google/android/libraries/places/internal/ij;

    check-cast p1, Lcom/google/android/libraries/places/internal/gr;

    .line 271
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/dj;->a(Lcom/google/android/libraries/places/internal/gr;)V

    .line 272
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p1

    .line 273
    sget-object v0, Lcom/google/android/libraries/places/internal/gc;->d:Lcom/google/android/libraries/places/internal/gc;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij;->f()Lcom/google/android/libraries/places/internal/ij$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/gc$a;

    .line 276
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 277
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/gc$a;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v1, Lcom/google/android/libraries/places/internal/gc;

    .line 279
    iget v2, v1, Lcom/google/android/libraries/places/internal/gc;->a:I

    or-int/2addr v2, v3

    iput v2, v1, Lcom/google/android/libraries/places/internal/gc;->a:I

    .line 280
    iput v3, v1, Lcom/google/android/libraries/places/internal/gc;->b:I

    .line 284
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 285
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/gc$a;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v1, Lcom/google/android/libraries/places/internal/gc;

    .line 287
    iget v2, v1, Lcom/google/android/libraries/places/internal/gc;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/google/android/libraries/places/internal/gc;->a:I

    .line 288
    iput p1, v1, Lcom/google/android/libraries/places/internal/gc;->c:I

    .line 292
    iget-boolean p1, v0, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    if-eqz p1, :cond_13a

    .line 293
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    goto :goto_143

    .line 294
    :cond_13a
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ij;->e()V

    .line 295
    iput-boolean v3, v0, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    .line 296
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    .line 297
    :goto_143
    check-cast p1, Lcom/google/android/libraries/places/internal/ij;

    .line 298
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ij;->g()Z

    move-result v0

    if-nez v0, :cond_151

    .line 300
    new-instance p1, Lcom/google/android/libraries/places/internal/ks;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ks;-><init>()V

    .line 301
    throw p1

    .line 303
    :cond_151
    check-cast p1, Lcom/google/android/libraries/places/internal/ij;

    check-cast p1, Lcom/google/android/libraries/places/internal/gc;

    .line 304
    invoke-static {}, Lcom/google/android/libraries/places/internal/gd;->a()Lcom/google/android/libraries/places/internal/gd$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/gd$b;->c:Lcom/google/android/libraries/places/internal/gd$b;

    .line 305
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/gd$a;->a(Lcom/google/android/libraries/places/internal/gd$b;)Lcom/google/android/libraries/places/internal/gd$a;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 308
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/gd$a;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v1, Lcom/google/android/libraries/places/internal/gd;

    if-nez p1, :cond_16e

    .line 311
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 312
    :cond_16e
    iput-object p1, v1, Lcom/google/android/libraries/places/internal/gd;->e:Lcom/google/android/libraries/places/internal/gc;

    .line 313
    iget p1, v1, Lcom/google/android/libraries/places/internal/gd;->a:I

    or-int/lit8 p1, p1, 0x20

    iput p1, v1, Lcom/google/android/libraries/places/internal/gd;->a:I

    .line 316
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/places/internal/dj;->a(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/internal/gd$c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/gd$a;->a(Lcom/google/android/libraries/places/internal/gd$c;)Lcom/google/android/libraries/places/internal/gd$a;

    move-result-object p1

    sub-long v0, p5, p3

    long-to-int p2, v0

    .line 317
    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/gd$a;->a(I)Lcom/google/android/libraries/places/internal/gd$a;

    move-result-object p1

    .line 322
    iget-boolean p2, p1, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    if-eqz p2, :cond_18c

    .line 323
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    goto :goto_195

    .line 324
    :cond_18c
    iget-object p2, p1, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/ij;->e()V

    .line 325
    iput-boolean v3, p1, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    .line 326
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    .line 327
    :goto_195
    check-cast p1, Lcom/google/android/libraries/places/internal/ij;

    .line 328
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ij;->g()Z

    move-result p2

    if-nez p2, :cond_1a3

    .line 330
    new-instance p1, Lcom/google/android/libraries/places/internal/ks;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ks;-><init>()V

    .line 331
    throw p1

    .line 333
    :cond_1a3
    check-cast p1, Lcom/google/android/libraries/places/internal/ij;

    check-cast p1, Lcom/google/android/libraries/places/internal/gd;

    .line 334
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/dj;->a(Lcom/google/android/libraries/places/internal/gd;)V

    return-void
.end method

.method public a(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;Lcom/google/android/gms/tasks/Task;JJ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;",
            ">;JJ)V"
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/android/libraries/places/internal/gi;->c:Lcom/google/android/libraries/places/internal/gi;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij;->f()Lcom/google/android/libraries/places/internal/ij$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/gi$a;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getTypeFilter()Lcom/google/android/libraries/places/api/model/TypeFilter;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 11
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getTypeFilter()Lcom/google/android/libraries/places/api/model/TypeFilter;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/ar;->a(Lcom/google/android/libraries/places/api/model/TypeFilter;)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 14
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/gi$a;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v2, Lcom/google/android/libraries/places/internal/gi;

    if-nez v1, :cond_25

    .line 17
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 19
    :cond_25
    iget-object v3, v2, Lcom/google/android/libraries/places/internal/gi;->b:Lcom/google/android/libraries/places/internal/iq;

    invoke-interface {v3}, Lcom/google/android/libraries/places/internal/iq;->a()Z

    move-result v3

    if-nez v3, :cond_35

    .line 20
    iget-object v3, v2, Lcom/google/android/libraries/places/internal/gi;->b:Lcom/google/android/libraries/places/internal/iq;

    .line 21
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/ij;->a(Lcom/google/android/libraries/places/internal/iq;)Lcom/google/android/libraries/places/internal/iq;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/libraries/places/internal/gi;->b:Lcom/google/android/libraries/places/internal/iq;

    .line 22
    :cond_35
    iget-object v2, v2, Lcom/google/android/libraries/places/internal/gi;->b:Lcom/google/android/libraries/places/internal/iq;

    invoke-interface {v2, v1}, Lcom/google/android/libraries/places/internal/iq;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_3a
    iget-boolean v1, v0, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_42

    .line 28
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    goto :goto_4b

    .line 29
    :cond_42
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/ij;->e()V

    .line 30
    iput-boolean v2, v0, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    .line 31
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    .line 32
    :goto_4b
    check-cast v0, Lcom/google/android/libraries/places/internal/ij;

    .line 33
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij;->g()Z

    move-result v1

    if-nez v1, :cond_59

    .line 35
    new-instance p1, Lcom/google/android/libraries/places/internal/ks;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ks;-><init>()V

    .line 36
    throw p1

    .line 38
    :cond_59
    check-cast v0, Lcom/google/android/libraries/places/internal/ij;

    check-cast v0, Lcom/google/android/libraries/places/internal/gi;

    .line 39
    sget-object v1, Lcom/google/android/libraries/places/internal/gl;->d:Lcom/google/android/libraries/places/internal/gl;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/ij;->f()Lcom/google/android/libraries/places/internal/ij$a;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/gl$a;

    if-eqz v0, :cond_7e

    .line 43
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 44
    iget-object v3, v1, Lcom/google/android/libraries/places/internal/gl$a;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v3, Lcom/google/android/libraries/places/internal/gl;

    if-nez v0, :cond_76

    .line 47
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 48
    :cond_76
    iput-object v0, v3, Lcom/google/android/libraries/places/internal/gl;->c:Lcom/google/android/libraries/places/internal/gi;

    .line 49
    iget v0, v3, Lcom/google/android/libraries/places/internal/gl;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v3, Lcom/google/android/libraries/places/internal/gl;->a:I

    .line 54
    :cond_7e
    iget-boolean v0, v1, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    if-eqz v0, :cond_85

    .line 55
    iget-object v0, v1, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    goto :goto_8e

    .line 56
    :cond_85
    iget-object v0, v1, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij;->e()V

    .line 57
    iput-boolean v2, v1, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    .line 58
    iget-object v0, v1, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    .line 59
    :goto_8e
    check-cast v0, Lcom/google/android/libraries/places/internal/ij;

    .line 60
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij;->g()Z

    move-result v1

    if-nez v1, :cond_9c

    .line 62
    new-instance p1, Lcom/google/android/libraries/places/internal/ks;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ks;-><init>()V

    .line 63
    throw p1

    .line 65
    :cond_9c
    check-cast v0, Lcom/google/android/libraries/places/internal/ij;

    check-cast v0, Lcom/google/android/libraries/places/internal/gl;

    .line 67
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/dj;->a()Lcom/google/android/libraries/places/internal/hf$a;

    move-result-object v1

    sget-object v3, Lcom/google/android/libraries/places/internal/hf$b;->b:Lcom/google/android/libraries/places/internal/hf$b;

    .line 68
    invoke-virtual {v1, v3}, Lcom/google/android/libraries/places/internal/hf$a;->a(Lcom/google/android/libraries/places/internal/hf$b;)Lcom/google/android/libraries/places/internal/hf$a;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 71
    iget-object v3, v1, Lcom/google/android/libraries/places/internal/hf$a;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v3, Lcom/google/android/libraries/places/internal/hf;

    if-nez v0, :cond_b9

    .line 74
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 75
    :cond_b9
    iput-object v0, v3, Lcom/google/android/libraries/places/internal/hf;->i:Lcom/google/android/libraries/places/internal/gl;

    .line 76
    iget v0, v3, Lcom/google/android/libraries/places/internal/hf;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, v3, Lcom/google/android/libraries/places/internal/hf;->a:I

    .line 80
    iget-boolean v0, v1, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    if-eqz v0, :cond_c8

    .line 81
    iget-object v0, v1, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    goto :goto_d1

    .line 82
    :cond_c8
    iget-object v0, v1, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij;->e()V

    .line 83
    iput-boolean v2, v1, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    .line 84
    iget-object v0, v1, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    .line 85
    :goto_d1
    check-cast v0, Lcom/google/android/libraries/places/internal/ij;

    .line 86
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij;->g()Z

    move-result v1

    if-nez v1, :cond_df

    .line 88
    new-instance p1, Lcom/google/android/libraries/places/internal/ks;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ks;-><init>()V

    .line 89
    throw p1

    .line 91
    :cond_df
    check-cast v0, Lcom/google/android/libraries/places/internal/ij;

    check-cast v0, Lcom/google/android/libraries/places/internal/hf;

    .line 92
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/dj;->b:Lcom/google/android/libraries/places/internal/dn;

    .line 93
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/dm;->a(Lcom/google/android/libraries/places/internal/dn;)Lcom/google/android/libraries/places/internal/gr$a;

    move-result-object v1

    sget-object v3, Lcom/google/android/libraries/places/internal/gr$b;->a:Lcom/google/android/libraries/places/internal/gr$b;

    .line 94
    invoke-virtual {v1, v3}, Lcom/google/android/libraries/places/internal/gr$a;->a(Lcom/google/android/libraries/places/internal/gr$b;)Lcom/google/android/libraries/places/internal/gr$a;

    move-result-object v1

    .line 95
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/gr$a;->a(Lcom/google/android/libraries/places/internal/hf;)Lcom/google/android/libraries/places/internal/gr$a;

    move-result-object v0

    .line 96
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getSessionToken()Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    move-result-object v1

    if-eqz v1, :cond_104

    .line 97
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getSessionToken()Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/gr$a;->a(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/gr$a;

    .line 102
    :cond_104
    iget-boolean p1, v0, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    if-eqz p1, :cond_10b

    .line 103
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    goto :goto_114

    .line 104
    :cond_10b
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ij;->e()V

    .line 105
    iput-boolean v2, v0, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    .line 106
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    .line 107
    :goto_114
    check-cast p1, Lcom/google/android/libraries/places/internal/ij;

    .line 108
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ij;->g()Z

    move-result v0

    if-nez v0, :cond_122

    .line 110
    new-instance p1, Lcom/google/android/libraries/places/internal/ks;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ks;-><init>()V

    .line 111
    throw p1

    .line 113
    :cond_122
    check-cast p1, Lcom/google/android/libraries/places/internal/ij;

    check-cast p1, Lcom/google/android/libraries/places/internal/gr;

    .line 114
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/dj;->a(Lcom/google/android/libraries/places/internal/gr;)V

    const/4 p1, 0x0

    .line 116
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_13e

    .line 117
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;

    .line 118
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;->getAutocompletePredictions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 119
    :cond_13e
    sget-object v0, Lcom/google/android/libraries/places/internal/gb;->c:Lcom/google/android/libraries/places/internal/gb;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij;->f()Lcom/google/android/libraries/places/internal/ij$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/gb$a;

    .line 122
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 123
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/gb$a;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v1, Lcom/google/android/libraries/places/internal/gb;

    .line 125
    iget v3, v1, Lcom/google/android/libraries/places/internal/gb;->a:I

    or-int/2addr v3, v2

    iput v3, v1, Lcom/google/android/libraries/places/internal/gb;->a:I

    .line 126
    iput p1, v1, Lcom/google/android/libraries/places/internal/gb;->b:I

    .line 130
    iget-boolean p1, v0, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    if-eqz p1, :cond_15b

    .line 131
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    goto :goto_164

    .line 132
    :cond_15b
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ij;->e()V

    .line 133
    iput-boolean v2, v0, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    .line 134
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    .line 135
    :goto_164
    check-cast p1, Lcom/google/android/libraries/places/internal/ij;

    .line 136
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ij;->g()Z

    move-result v0

    if-nez v0, :cond_172

    .line 138
    new-instance p1, Lcom/google/android/libraries/places/internal/ks;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ks;-><init>()V

    .line 139
    throw p1

    .line 141
    :cond_172
    check-cast p1, Lcom/google/android/libraries/places/internal/ij;

    check-cast p1, Lcom/google/android/libraries/places/internal/gb;

    .line 142
    invoke-static {}, Lcom/google/android/libraries/places/internal/gd;->a()Lcom/google/android/libraries/places/internal/gd$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/gd$b;->b:Lcom/google/android/libraries/places/internal/gd$b;

    .line 143
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/gd$a;->a(Lcom/google/android/libraries/places/internal/gd$b;)Lcom/google/android/libraries/places/internal/gd$a;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 146
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/gd$a;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v1, Lcom/google/android/libraries/places/internal/gd;

    if-nez p1, :cond_18f

    .line 149
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 150
    :cond_18f
    iput-object p1, v1, Lcom/google/android/libraries/places/internal/gd;->g:Lcom/google/android/libraries/places/internal/gb;

    .line 151
    iget p1, v1, Lcom/google/android/libraries/places/internal/gd;->a:I

    or-int/lit16 p1, p1, 0x200

    iput p1, v1, Lcom/google/android/libraries/places/internal/gd;->a:I

    .line 154
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/places/internal/dj;->a(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/internal/gd$c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/gd$a;->a(Lcom/google/android/libraries/places/internal/gd$c;)Lcom/google/android/libraries/places/internal/gd$a;

    move-result-object p1

    sub-long v0, p5, p3

    long-to-int p2, v0

    .line 155
    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/gd$a;->a(I)Lcom/google/android/libraries/places/internal/gd$a;

    move-result-object p1

    .line 160
    iget-boolean p2, p1, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    if-eqz p2, :cond_1ad

    .line 161
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    goto :goto_1b6

    .line 162
    :cond_1ad
    iget-object p2, p1, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/ij;->e()V

    .line 163
    iput-boolean v2, p1, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    .line 164
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    .line 165
    :goto_1b6
    check-cast p1, Lcom/google/android/libraries/places/internal/ij;

    .line 166
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ij;->g()Z

    move-result p2

    if-nez p2, :cond_1c4

    .line 168
    new-instance p1, Lcom/google/android/libraries/places/internal/ks;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ks;-><init>()V

    .line 169
    throw p1

    .line 171
    :cond_1c4
    check-cast p1, Lcom/google/android/libraries/places/internal/ij;

    check-cast p1, Lcom/google/android/libraries/places/internal/gd;

    .line 172
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/dj;->a(Lcom/google/android/libraries/places/internal/gd;)V

    return-void
.end method

.method public a(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Lcom/google/android/gms/tasks/Task;JJJ)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;",
            ">;JJJ)V"
        }
    .end annotation

    .line 336
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 337
    sget-object v0, Lcom/google/android/libraries/places/internal/gy$b;->b:Lcom/google/android/libraries/places/internal/gy$b;

    goto :goto_b

    .line 338
    :cond_9
    sget-object v0, Lcom/google/android/libraries/places/internal/gy$b;->a:Lcom/google/android/libraries/places/internal/gy$b;

    .line 339
    :goto_b
    sget-object v1, Lcom/google/android/libraries/places/internal/gy;->e:Lcom/google/android/libraries/places/internal/gy;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/ij;->f()Lcom/google/android/libraries/places/internal/ij$a;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/gy$a;

    .line 340
    invoke-static {}, Lcom/google/android/libraries/places/internal/he;->a()Lcom/google/android/libraries/places/internal/he$a;

    move-result-object v2

    .line 341
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;->getPlaceFields()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/aq;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/libraries/places/internal/he$a;->a(Ljava/lang/Iterable;)Lcom/google/android/libraries/places/internal/he$a;

    move-result-object p1

    .line 346
    iget-boolean v2, p1, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2b

    .line 347
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    goto :goto_34

    .line 348
    :cond_2b
    iget-object v2, p1, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/ij;->e()V

    .line 349
    iput-boolean v3, p1, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    .line 350
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    .line 351
    :goto_34
    check-cast p1, Lcom/google/android/libraries/places/internal/ij;

    .line 352
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ij;->g()Z

    move-result v2

    if-nez v2, :cond_42

    .line 354
    new-instance p1, Lcom/google/android/libraries/places/internal/ks;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ks;-><init>()V

    .line 355
    throw p1

    .line 357
    :cond_42
    check-cast p1, Lcom/google/android/libraries/places/internal/ij;

    check-cast p1, Lcom/google/android/libraries/places/internal/he;

    .line 359
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 360
    iget-object v2, v1, Lcom/google/android/libraries/places/internal/gy$a;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v2, Lcom/google/android/libraries/places/internal/gy;

    if-nez p1, :cond_55

    .line 363
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 364
    :cond_55
    iput-object p1, v2, Lcom/google/android/libraries/places/internal/gy;->d:Lcom/google/android/libraries/places/internal/he;

    .line 365
    iget p1, v2, Lcom/google/android/libraries/places/internal/gy;->a:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v2, Lcom/google/android/libraries/places/internal/gy;->a:I

    sub-long v4, p7, p3

    long-to-int p1, v4

    .line 369
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 370
    iget-object p3, v1, Lcom/google/android/libraries/places/internal/gy$a;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast p3, Lcom/google/android/libraries/places/internal/gy;

    .line 372
    iget p4, p3, Lcom/google/android/libraries/places/internal/gy;->a:I

    or-int/lit8 p4, p4, 0x4

    iput p4, p3, Lcom/google/android/libraries/places/internal/gy;->a:I

    .line 373
    iput p1, p3, Lcom/google/android/libraries/places/internal/gy;->c:I

    .line 377
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 378
    iget-object p1, v1, Lcom/google/android/libraries/places/internal/gy$a;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast p1, Lcom/google/android/libraries/places/internal/gy;

    if-nez v0, :cond_7e

    .line 381
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 382
    :cond_7e
    iget p3, p1, Lcom/google/android/libraries/places/internal/gy;->a:I

    or-int/lit8 p3, p3, 0x2

    iput p3, p1, Lcom/google/android/libraries/places/internal/gy;->a:I

    .line 384
    iget p3, v0, Lcom/google/android/libraries/places/internal/gy$b;->c:I

    .line 385
    iput p3, p1, Lcom/google/android/libraries/places/internal/gy;->b:I

    .line 389
    iget-boolean p1, v1, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    if-eqz p1, :cond_8f

    .line 390
    iget-object p1, v1, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    goto :goto_98

    .line 391
    :cond_8f
    iget-object p1, v1, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ij;->e()V

    .line 392
    iput-boolean v3, v1, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    .line 393
    iget-object p1, v1, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    .line 394
    :goto_98
    check-cast p1, Lcom/google/android/libraries/places/internal/ij;

    .line 395
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ij;->g()Z

    move-result p3

    if-nez p3, :cond_a6

    .line 397
    new-instance p1, Lcom/google/android/libraries/places/internal/ks;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ks;-><init>()V

    .line 398
    throw p1

    .line 400
    :cond_a6
    check-cast p1, Lcom/google/android/libraries/places/internal/ij;

    check-cast p1, Lcom/google/android/libraries/places/internal/gy;

    .line 401
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/dj;->b:Lcom/google/android/libraries/places/internal/dn;

    .line 402
    invoke-static {p3}, Lcom/google/android/libraries/places/internal/dm;->a(Lcom/google/android/libraries/places/internal/dn;)Lcom/google/android/libraries/places/internal/gr$a;

    move-result-object p3

    sget-object p4, Lcom/google/android/libraries/places/internal/gr$b;->c:Lcom/google/android/libraries/places/internal/gr$b;

    .line 403
    invoke-virtual {p3, p4}, Lcom/google/android/libraries/places/internal/gr$a;->a(Lcom/google/android/libraries/places/internal/gr$b;)Lcom/google/android/libraries/places/internal/gr$a;

    move-result-object p3

    .line 405
    invoke-virtual {p3}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 406
    iget-object p4, p3, Lcom/google/android/libraries/places/internal/gr$a;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast p4, Lcom/google/android/libraries/places/internal/gr;

    if-nez p1, :cond_c5

    .line 409
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 410
    :cond_c5
    iput-object p1, p4, Lcom/google/android/libraries/places/internal/gr;->h:Lcom/google/android/libraries/places/internal/gy;

    .line 411
    iget p1, p4, Lcom/google/android/libraries/places/internal/gr;->a:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p4, Lcom/google/android/libraries/places/internal/gr;->a:I

    .line 415
    iget-boolean p1, p3, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    if-eqz p1, :cond_d4

    .line 416
    iget-object p1, p3, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    goto :goto_dd

    .line 417
    :cond_d4
    iget-object p1, p3, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ij;->e()V

    .line 418
    iput-boolean v3, p3, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    .line 419
    iget-object p1, p3, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    .line 420
    :goto_dd
    check-cast p1, Lcom/google/android/libraries/places/internal/ij;

    .line 421
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ij;->g()Z

    move-result p3

    if-nez p3, :cond_eb

    .line 423
    new-instance p1, Lcom/google/android/libraries/places/internal/ks;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ks;-><init>()V

    .line 424
    throw p1

    .line 426
    :cond_eb
    check-cast p1, Lcom/google/android/libraries/places/internal/ij;

    check-cast p1, Lcom/google/android/libraries/places/internal/gr;

    .line 427
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/dj;->a(Lcom/google/android/libraries/places/internal/gr;)V

    const-wide/16 p3, -0x1

    cmp-long p1, p5, p3

    if-nez p1, :cond_f9

    return-void

    :cond_f9
    const/4 p1, 0x0

    .line 431
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p3

    if-eqz p3, :cond_10e

    .line 432
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;

    .line 433
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;->getPlaceLikelihoods()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 434
    :cond_10e
    sget-object p3, Lcom/google/android/libraries/places/internal/ga;->c:Lcom/google/android/libraries/places/internal/ga;

    invoke-virtual {p3}, Lcom/google/android/libraries/places/internal/ij;->f()Lcom/google/android/libraries/places/internal/ij$a;

    move-result-object p3

    check-cast p3, Lcom/google/android/libraries/places/internal/ga$a;

    .line 437
    invoke-virtual {p3}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 438
    iget-object p4, p3, Lcom/google/android/libraries/places/internal/ga$a;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast p4, Lcom/google/android/libraries/places/internal/ga;

    .line 440
    iget v0, p4, Lcom/google/android/libraries/places/internal/ga;->a:I

    or-int/2addr v0, v3

    iput v0, p4, Lcom/google/android/libraries/places/internal/ga;->a:I

    .line 441
    iput p1, p4, Lcom/google/android/libraries/places/internal/ga;->b:I

    .line 445
    iget-boolean p1, p3, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    if-eqz p1, :cond_12b

    .line 446
    iget-object p1, p3, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    goto :goto_134

    .line 447
    :cond_12b
    iget-object p1, p3, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ij;->e()V

    .line 448
    iput-boolean v3, p3, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    .line 449
    iget-object p1, p3, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    .line 450
    :goto_134
    check-cast p1, Lcom/google/android/libraries/places/internal/ij;

    .line 451
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ij;->g()Z

    move-result p3

    if-nez p3, :cond_142

    .line 453
    new-instance p1, Lcom/google/android/libraries/places/internal/ks;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ks;-><init>()V

    .line 454
    throw p1

    .line 456
    :cond_142
    check-cast p1, Lcom/google/android/libraries/places/internal/ij;

    check-cast p1, Lcom/google/android/libraries/places/internal/ga;

    .line 457
    invoke-static {}, Lcom/google/android/libraries/places/internal/gd;->a()Lcom/google/android/libraries/places/internal/gd$a;

    move-result-object p3

    sget-object p4, Lcom/google/android/libraries/places/internal/gd$b;->a:Lcom/google/android/libraries/places/internal/gd$b;

    .line 458
    invoke-virtual {p3, p4}, Lcom/google/android/libraries/places/internal/gd$a;->a(Lcom/google/android/libraries/places/internal/gd$b;)Lcom/google/android/libraries/places/internal/gd$a;

    move-result-object p3

    .line 460
    invoke-virtual {p3}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 461
    iget-object p4, p3, Lcom/google/android/libraries/places/internal/gd$a;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast p4, Lcom/google/android/libraries/places/internal/gd;

    if-nez p1, :cond_15f

    .line 464
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 465
    :cond_15f
    iput-object p1, p4, Lcom/google/android/libraries/places/internal/gd;->f:Lcom/google/android/libraries/places/internal/ga;

    .line 466
    iget p1, p4, Lcom/google/android/libraries/places/internal/gd;->a:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p4, Lcom/google/android/libraries/places/internal/gd;->a:I

    .line 469
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/places/internal/dj;->a(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/internal/gd$c;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/libraries/places/internal/gd$a;->a(Lcom/google/android/libraries/places/internal/gd$c;)Lcom/google/android/libraries/places/internal/gd$a;

    move-result-object p1

    sub-long p2, p7, p5

    long-to-int p2, p2

    .line 470
    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/gd$a;->a(I)Lcom/google/android/libraries/places/internal/gd$a;

    move-result-object p1

    .line 475
    iget-boolean p2, p1, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    if-eqz p2, :cond_17d

    .line 476
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    goto :goto_186

    .line 477
    :cond_17d
    iget-object p2, p1, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/ij;->e()V

    .line 478
    iput-boolean v3, p1, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    .line 479
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    .line 480
    :goto_186
    check-cast p1, Lcom/google/android/libraries/places/internal/ij;

    .line 481
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ij;->g()Z

    move-result p2

    if-nez p2, :cond_194

    .line 483
    new-instance p1, Lcom/google/android/libraries/places/internal/ks;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ks;-><init>()V

    .line 484
    throw p1

    .line 486
    :cond_194
    check-cast p1, Lcom/google/android/libraries/places/internal/ij;

    check-cast p1, Lcom/google/android/libraries/places/internal/gd;

    .line 487
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/dj;->a(Lcom/google/android/libraries/places/internal/gd;)V

    return-void
.end method

.method public a(Lcom/google/android/libraries/places/internal/gd;)V
    .registers 5

    .line 592
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/dj;->b:Lcom/google/android/libraries/places/internal/dn;

    .line 593
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/dm;->a(Lcom/google/android/libraries/places/internal/dn;)Lcom/google/android/libraries/places/internal/gr$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/gr$b;->e:Lcom/google/android/libraries/places/internal/gr$b;

    .line 594
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/gr$a;->a(Lcom/google/android/libraries/places/internal/gr$b;)Lcom/google/android/libraries/places/internal/gr$a;

    move-result-object v0

    .line 596
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 597
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/gr$a;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v1, Lcom/google/android/libraries/places/internal/gr;

    if-nez p1, :cond_1b

    .line 600
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 601
    :cond_1b
    iput-object p1, v1, Lcom/google/android/libraries/places/internal/gr;->j:Lcom/google/android/libraries/places/internal/gd;

    .line 602
    iget p1, v1, Lcom/google/android/libraries/places/internal/gr;->a:I

    const/high16 v2, 0x800000

    or-int/2addr p1, v2

    iput p1, v1, Lcom/google/android/libraries/places/internal/gr;->a:I

    .line 606
    iget-boolean p1, v0, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    if-eqz p1, :cond_2b

    .line 607
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    goto :goto_35

    .line 608
    :cond_2b
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ij;->e()V

    const/4 p1, 0x1

    .line 609
    iput-boolean p1, v0, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    .line 610
    iget-object p1, v0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    .line 611
    :goto_35
    check-cast p1, Lcom/google/android/libraries/places/internal/ij;

    .line 612
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ij;->g()Z

    move-result v0

    if-nez v0, :cond_43

    .line 614
    new-instance p1, Lcom/google/android/libraries/places/internal/ks;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ks;-><init>()V

    .line 615
    throw p1

    .line 617
    :cond_43
    check-cast p1, Lcom/google/android/libraries/places/internal/ij;

    check-cast p1, Lcom/google/android/libraries/places/internal/gr;

    .line 618
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/dj;->a(Lcom/google/android/libraries/places/internal/gr;)V

    return-void
.end method

.method public a(Lcom/google/android/libraries/places/internal/gr;)V
    .registers 3

    .line 620
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/dm;->a(Lcom/google/android/libraries/places/internal/gr;)Lcom/google/android/libraries/places/internal/fu$a;

    move-result-object p1

    .line 621
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/dj;->a:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/hj;->c()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/clearcut/ClearcutLogger;->newEvent([B)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->log()V

    return-void
.end method

.method public final synthetic b()Ljava/lang/Object;
    .registers 2

    .line 6
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method
