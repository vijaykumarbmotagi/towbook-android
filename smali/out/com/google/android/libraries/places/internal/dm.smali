.class public Lcom/google/android/libraries/places/internal/dm;
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
.field public a:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/libraries/places/internal/gr;)Lcom/google/android/libraries/places/internal/fu$a;
    .registers 6

    .line 81
    sget-object v0, Lcom/google/android/libraries/places/internal/fu$a;->d:Lcom/google/android/libraries/places/internal/fu$a;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij;->f()Lcom/google/android/libraries/places/internal/ij$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/fu$a$a;

    .line 82
    sget-object v1, Lcom/google/android/libraries/places/internal/fu$a$b;->a:Lcom/google/android/libraries/places/internal/fu$a$b;

    .line 84
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 85
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/fu$a$a;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v2, Lcom/google/android/libraries/places/internal/fu$a;

    if-nez v1, :cond_19

    .line 88
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    .line 89
    :cond_19
    iget v3, v2, Lcom/google/android/libraries/places/internal/fu$a;->a:I

    const/4 v4, 0x1

    or-int/2addr v3, v4

    iput v3, v2, Lcom/google/android/libraries/places/internal/fu$a;->a:I

    .line 91
    iget v1, v1, Lcom/google/android/libraries/places/internal/fu$a$b;->b:I

    .line 92
    iput v1, v2, Lcom/google/android/libraries/places/internal/fu$a;->b:I

    .line 96
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 97
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/fu$a$a;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v1, Lcom/google/android/libraries/places/internal/fu$a;

    if-nez p0, :cond_32

    .line 100
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    .line 101
    :cond_32
    iput-object p0, v1, Lcom/google/android/libraries/places/internal/fu$a;->c:Lcom/google/android/libraries/places/internal/gr;

    .line 102
    iget p0, v1, Lcom/google/android/libraries/places/internal/fu$a;->a:I

    or-int/lit8 p0, p0, 0x2

    iput p0, v1, Lcom/google/android/libraries/places/internal/fu$a;->a:I

    .line 106
    iget-boolean p0, v0, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    if-eqz p0, :cond_41

    .line 107
    iget-object p0, v0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    goto :goto_4a

    .line 108
    :cond_41
    iget-object p0, v0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ij;->e()V

    .line 109
    iput-boolean v4, v0, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    .line 110
    iget-object p0, v0, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    .line 111
    :goto_4a
    check-cast p0, Lcom/google/android/libraries/places/internal/ij;

    .line 112
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ij;->g()Z

    move-result v0

    if-nez v0, :cond_58

    .line 114
    new-instance p0, Lcom/google/android/libraries/places/internal/ks;

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/ks;-><init>()V

    .line 115
    throw p0

    .line 117
    :cond_58
    check-cast p0, Lcom/google/android/libraries/places/internal/ij;

    check-cast p0, Lcom/google/android/libraries/places/internal/fu$a;

    return-object p0
.end method

.method public static a(Lcom/google/android/libraries/places/internal/dn;)Lcom/google/android/libraries/places/internal/gr$a;
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/dn;->c()Lcom/google/android/libraries/places/internal/dn$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/dn$b;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_d0

    .line 6
    sget-object v0, Lcom/google/android/libraries/places/internal/gr$c;->a:Lcom/google/android/libraries/places/internal/gr$c;

    goto :goto_13

    .line 2
    :pswitch_e
    sget-object v0, Lcom/google/android/libraries/places/internal/gr$c;->c:Lcom/google/android/libraries/places/internal/gr$c;

    goto :goto_13

    .line 4
    :pswitch_11
    sget-object v0, Lcom/google/android/libraries/places/internal/gr$c;->b:Lcom/google/android/libraries/places/internal/gr$c;

    .line 7
    :goto_13
    sget-object v1, Lcom/google/android/libraries/places/internal/gr;->o:Lcom/google/android/libraries/places/internal/gr;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/ij;->f()Lcom/google/android/libraries/places/internal/ij$a;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/gr$a;

    .line 8
    sget-object v2, Lcom/google/android/libraries/places/internal/fx;->d:Lcom/google/android/libraries/places/internal/fx;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/ij;->f()Lcom/google/android/libraries/places/internal/ij$a;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/internal/fx$a;

    .line 10
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/dn;->a()Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 12
    iget-object v4, v2, Lcom/google/android/libraries/places/internal/fx$a;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v4, Lcom/google/android/libraries/places/internal/fx;

    if-nez v3, :cond_36

    .line 15
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    .line 16
    :cond_36
    iget v5, v4, Lcom/google/android/libraries/places/internal/fx;->a:I

    const/4 v6, 0x1

    or-int/2addr v5, v6

    iput v5, v4, Lcom/google/android/libraries/places/internal/fx;->a:I

    .line 17
    iput-object v3, v4, Lcom/google/android/libraries/places/internal/fx;->b:Ljava/lang/String;

    .line 20
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/dn;->b()I

    move-result p0

    .line 21
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 22
    iget-object v3, v2, Lcom/google/android/libraries/places/internal/fx$a;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v3, Lcom/google/android/libraries/places/internal/fx;

    .line 24
    iget v4, v3, Lcom/google/android/libraries/places/internal/fx;->a:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Lcom/google/android/libraries/places/internal/fx;->a:I

    .line 25
    iput p0, v3, Lcom/google/android/libraries/places/internal/fx;->c:I

    .line 29
    iget-boolean p0, v2, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    if-eqz p0, :cond_58

    .line 30
    iget-object p0, v2, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    goto :goto_61

    .line 31
    :cond_58
    iget-object p0, v2, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ij;->e()V

    .line 32
    iput-boolean v6, v2, Lcom/google/android/libraries/places/internal/ij$a;->b:Z

    .line 33
    iget-object p0, v2, Lcom/google/android/libraries/places/internal/ij$a;->a:Lcom/google/android/libraries/places/internal/ij;

    .line 34
    :goto_61
    check-cast p0, Lcom/google/android/libraries/places/internal/ij;

    .line 35
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/ij;->g()Z

    move-result v2

    if-nez v2, :cond_6f

    .line 37
    new-instance p0, Lcom/google/android/libraries/places/internal/ks;

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/ks;-><init>()V

    .line 38
    throw p0

    .line 40
    :cond_6f
    check-cast p0, Lcom/google/android/libraries/places/internal/ij;

    check-cast p0, Lcom/google/android/libraries/places/internal/fx;

    .line 42
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 43
    iget-object v2, v1, Lcom/google/android/libraries/places/internal/gr$a;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v2, Lcom/google/android/libraries/places/internal/gr;

    if-nez p0, :cond_82

    .line 46
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    .line 47
    :cond_82
    iput-object p0, v2, Lcom/google/android/libraries/places/internal/gr;->c:Lcom/google/android/libraries/places/internal/fx;

    .line 48
    iget p0, v2, Lcom/google/android/libraries/places/internal/gr;->a:I

    or-int/lit8 p0, p0, 0x4

    iput p0, v2, Lcom/google/android/libraries/places/internal/gr;->a:I

    .line 52
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 53
    iget-object p0, v1, Lcom/google/android/libraries/places/internal/gr$a;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast p0, Lcom/google/android/libraries/places/internal/gr;

    .line 55
    iget v2, p0, Lcom/google/android/libraries/places/internal/gr;->a:I

    const/high16 v3, 0x1000000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/libraries/places/internal/gr;->a:I

    .line 56
    iput-boolean v6, p0, Lcom/google/android/libraries/places/internal/gr;->k:Z

    .line 60
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 61
    iget-object p0, v1, Lcom/google/android/libraries/places/internal/gr$a;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast p0, Lcom/google/android/libraries/places/internal/gr;

    if-nez v0, :cond_a9

    .line 64
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    .line 65
    :cond_a9
    iget v2, p0, Lcom/google/android/libraries/places/internal/gr;->a:I

    const/high16 v3, 0x20000000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/libraries/places/internal/gr;->a:I

    .line 67
    iget v0, v0, Lcom/google/android/libraries/places/internal/gr$c;->d:I

    .line 68
    iput v0, p0, Lcom/google/android/libraries/places/internal/gr;->n:I

    const-string p0, "1.0.0"

    .line 72
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/ij$a;->b()V

    .line 73
    iget-object v0, v1, Lcom/google/android/libraries/places/internal/gr$a;->a:Lcom/google/android/libraries/places/internal/ij;

    check-cast v0, Lcom/google/android/libraries/places/internal/gr;

    if-nez p0, :cond_c5

    .line 76
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    .line 77
    :cond_c5
    iget v2, v0, Lcom/google/android/libraries/places/internal/gr;->a:I

    const/high16 v3, 0x8000000

    or-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/libraries/places/internal/gr;->a:I

    .line 78
    iput-object p0, v0, Lcom/google/android/libraries/places/internal/gr;->m:Ljava/lang/String;

    return-object v1

    nop

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method

.method public static a(Lcom/google/android/libraries/places/internal/fj;Lcom/google/android/libraries/places/internal/d;Lcom/google/android/libraries/places/internal/j;Lcom/google/android/libraries/places/internal/dj;Lcom/google/android/libraries/places/internal/a;)Lcom/google/android/libraries/places/internal/u;
    .registers 12

    .line 119
    new-instance v6, Lcom/google/android/libraries/places/internal/u;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/u;-><init>(Lcom/google/android/libraries/places/internal/fj;Lcom/google/android/libraries/places/internal/d;Lcom/google/android/libraries/places/internal/j;Lcom/google/android/libraries/places/internal/dj;Lcom/google/android/libraries/places/internal/a;)V

    return-object v6
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Lcom/google/android/libraries/places/internal/dm;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/google/android/libraries/places/internal/dm;"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/dm;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public synthetic a()Lcom/google/android/libraries/places/internal/s;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/dm;->c()Lcom/google/android/libraries/places/internal/af;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .registers 2

    .line 120
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method public c()Lcom/google/android/libraries/places/internal/af;
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/dm;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "Photo must be set to non-null value."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 126
    new-instance v0, Lcom/google/android/libraries/places/internal/af;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/dm;->a:Landroid/graphics/Bitmap;

    .line 127
    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/af;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method
