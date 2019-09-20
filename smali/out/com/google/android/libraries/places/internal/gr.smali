.class public final Lcom/google/android/libraries/places/internal/gr;
.super Lcom/google/android/libraries/places/internal/ij;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/jq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/internal/gr$a;,
        Lcom/google/android/libraries/places/internal/gr$c;,
        Lcom/google/android/libraries/places/internal/gr$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/ij<",
        "Lcom/google/android/libraries/places/internal/gr;",
        "Lcom/google/android/libraries/places/internal/gr$a;",
        ">;",
        "Lcom/google/android/libraries/places/internal/jq;"
    }
.end annotation


# static fields
.field public static final o:Lcom/google/android/libraries/places/internal/gr;

.field private static volatile s:Lcom/google/android/libraries/places/internal/jx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/jx<",
            "Lcom/google/android/libraries/places/internal/gr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field public c:Lcom/google/android/libraries/places/internal/fx;

.field public d:Lcom/google/android/libraries/places/internal/fy;

.field public e:Lcom/google/android/libraries/places/internal/hf;

.field public f:Lcom/google/android/libraries/places/internal/gj;

.field public g:Lcom/google/android/libraries/places/internal/hb;

.field public h:Lcom/google/android/libraries/places/internal/gy;

.field public i:Lcom/google/android/libraries/places/internal/gm;

.field public j:Lcom/google/android/libraries/places/internal/gd;

.field public k:Z

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:I

.field private p:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Lcom/google/android/libraries/places/internal/gr;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/gr;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/gr;->o:Lcom/google/android/libraries/places/internal/gr;

    .line 34
    const-class v0, Lcom/google/android/libraries/places/internal/gr;

    sget-object v1, Lcom/google/android/libraries/places/internal/gr;->o:Lcom/google/android/libraries/places/internal/gr;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/ij;->a(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/ij;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/ij;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/libraries/places/internal/gr;->p:B

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/google/android/libraries/places/internal/gr;->b:I

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/gr;->l:Ljava/lang/String;

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/gr;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/libraries/places/internal/ij$d;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 7
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ij$d;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_ae

    .line 32
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 20
    :pswitch_f
    sget-object p1, Lcom/google/android/libraries/places/internal/gr;->s:Lcom/google/android/libraries/places/internal/jx;

    if-nez p1, :cond_28

    .line 22
    const-class p2, Lcom/google/android/libraries/places/internal/gr;

    monitor-enter p2

    .line 23
    :try_start_16
    sget-object p1, Lcom/google/android/libraries/places/internal/gr;->s:Lcom/google/android/libraries/places/internal/jx;

    if-nez p1, :cond_23

    .line 25
    new-instance p1, Lcom/google/android/libraries/places/internal/hl;

    sget-object v0, Lcom/google/android/libraries/places/internal/gr;->o:Lcom/google/android/libraries/places/internal/gr;

    invoke-direct {p1, v0}, Lcom/google/android/libraries/places/internal/hl;-><init>(Lcom/google/android/libraries/places/internal/ij;)V

    .line 26
    sput-object p1, Lcom/google/android/libraries/places/internal/gr;->s:Lcom/google/android/libraries/places/internal/jx;

    .line 27
    :cond_23
    monitor-exit p2

    goto :goto_28

    :catchall_25
    move-exception p1

    monitor-exit p2
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_25

    throw p1

    :cond_28
    :goto_28
    return-object p1

    .line 19
    :pswitch_29
    sget-object p1, Lcom/google/android/libraries/places/internal/gr;->o:Lcom/google/android/libraries/places/internal/gr;

    return-object p1

    .line 9
    :pswitch_2c
    new-instance p1, Lcom/google/android/libraries/places/internal/gr$a;

    .line 10
    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/gr$a;-><init>()V

    return-object p1

    .line 8
    :pswitch_32
    new-instance p1, Lcom/google/android/libraries/places/internal/gr;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/gr;-><init>()V

    return-object p1

    :pswitch_38
    const/16 p1, 0x10

    .line 12
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "a"

    aput-object p2, p1, v1

    const-string p2, "b"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    .line 13
    invoke-static {}, Lcom/google/android/libraries/places/internal/gr$b;->b()Lcom/google/android/libraries/places/internal/in;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string v0, "c"

    aput-object v0, p1, p2

    const/4 p2, 0x4

    const-string v0, "d"

    aput-object v0, p1, p2

    const/4 p2, 0x5

    const-string v0, "e"

    aput-object v0, p1, p2

    const/4 p2, 0x6

    const-string v0, "f"

    aput-object v0, p1, p2

    const/4 p2, 0x7

    const-string v0, "g"

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string v0, "h"

    aput-object v0, p1, p2

    const/16 p2, 0x9

    const-string v0, "i"

    aput-object v0, p1, p2

    const/16 p2, 0xa

    const-string v0, "j"

    aput-object v0, p1, p2

    const/16 p2, 0xb

    const-string v0, "k"

    aput-object v0, p1, p2

    const/16 p2, 0xc

    const-string v0, "l"

    aput-object v0, p1, p2

    const/16 p2, 0xd

    const-string v0, "m"

    aput-object v0, p1, p2

    const/16 p2, 0xe

    const-string v0, "n"

    aput-object v0, p1, p2

    const/16 p2, 0xf

    .line 16
    invoke-static {}, Lcom/google/android/libraries/places/internal/gr$c;->b()Lcom/google/android/libraries/places/internal/in;

    move-result-object v0

    aput-object v0, p1, p2

    const-string p2, "\u0001\r\u0000\u0001\u0001 \r\u0000\u0000\u0003\u0001\u000c\u0001\u0002\t\u0002\u0003\u0409\u0003\u0005\u0409\u0006\u0008\u0409\u0008\u000c\t\t\u000e\t\n\u0012\t\u000e\u0018\t\u0017\u001b\u0007\u0018\u001c\u0008\u0019\u001e\u0008\u001b \u000c\u001d"

    .line 18
    sget-object v0, Lcom/google/android/libraries/places/internal/gr;->o:Lcom/google/android/libraries/places/internal/gr;

    invoke-static {v0, p2, p1}, Lcom/google/android/libraries/places/internal/gr;->a(Lcom/google/android/libraries/places/internal/jo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_9f
    if-nez p2, :cond_a2

    const/4 v0, 0x0

    :cond_a2
    int-to-byte p1, v0

    .line 30
    iput-byte p1, p0, Lcom/google/android/libraries/places/internal/gr;->p:B

    const/4 p1, 0x0

    return-object p1

    .line 29
    :pswitch_a7
    iget-byte p1, p0, Lcom/google/android/libraries/places/internal/gr;->p:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_a7
        :pswitch_9f
        :pswitch_38
        :pswitch_32
        :pswitch_2c
        :pswitch_29
        :pswitch_f
    .end packed-switch
.end method
