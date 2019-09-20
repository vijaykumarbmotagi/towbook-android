.class public final Lcom/google/android/libraries/places/internal/hf;
.super Lcom/google/android/libraries/places/internal/ij;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/jq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/internal/hf$a;,
        Lcom/google/android/libraries/places/internal/hf$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/ij<",
        "Lcom/google/android/libraries/places/internal/hf;",
        "Lcom/google/android/libraries/places/internal/hf$a;",
        ">;",
        "Lcom/google/android/libraries/places/internal/jq;"
    }
.end annotation


# static fields
.field public static final j:Lcom/google/android/libraries/places/internal/hf;

.field private static volatile l:Lcom/google/android/libraries/places/internal/jx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/jx<",
            "Lcom/google/android/libraries/places/internal/hf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lcom/google/android/libraries/places/internal/hi;

.field public f:Lcom/google/android/libraries/places/internal/gx;

.field public g:Lcom/google/android/libraries/places/internal/gk;

.field public h:Lcom/google/android/libraries/places/internal/gw;

.field public i:Lcom/google/android/libraries/places/internal/gl;

.field private k:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lcom/google/android/libraries/places/internal/hf;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/hf;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/hf;->j:Lcom/google/android/libraries/places/internal/hf;

    .line 30
    const-class v0, Lcom/google/android/libraries/places/internal/hf;

    sget-object v1, Lcom/google/android/libraries/places/internal/hf;->j:Lcom/google/android/libraries/places/internal/hf;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/ij;->a(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/ij;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/ij;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/libraries/places/internal/hf;->k:B

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/hf;->c:Ljava/lang/String;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/hf;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/libraries/places/internal/ij$d;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 6
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ij$d;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_88

    .line 28
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 16
    :pswitch_f
    sget-object p1, Lcom/google/android/libraries/places/internal/hf;->l:Lcom/google/android/libraries/places/internal/jx;

    if-nez p1, :cond_28

    .line 18
    const-class p2, Lcom/google/android/libraries/places/internal/hf;

    monitor-enter p2

    .line 19
    :try_start_16
    sget-object p1, Lcom/google/android/libraries/places/internal/hf;->l:Lcom/google/android/libraries/places/internal/jx;

    if-nez p1, :cond_23

    .line 21
    new-instance p1, Lcom/google/android/libraries/places/internal/hl;

    sget-object v0, Lcom/google/android/libraries/places/internal/hf;->j:Lcom/google/android/libraries/places/internal/hf;

    invoke-direct {p1, v0}, Lcom/google/android/libraries/places/internal/hl;-><init>(Lcom/google/android/libraries/places/internal/ij;)V

    .line 22
    sput-object p1, Lcom/google/android/libraries/places/internal/hf;->l:Lcom/google/android/libraries/places/internal/jx;

    .line 23
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

    .line 15
    :pswitch_29
    sget-object p1, Lcom/google/android/libraries/places/internal/hf;->j:Lcom/google/android/libraries/places/internal/hf;

    return-object p1

    .line 8
    :pswitch_2c
    new-instance p1, Lcom/google/android/libraries/places/internal/hf$a;

    .line 9
    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/hf$a;-><init>()V

    return-object p1

    .line 7
    :pswitch_32
    new-instance p1, Lcom/google/android/libraries/places/internal/hf;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/hf;-><init>()V

    return-object p1

    :pswitch_38
    const/16 p1, 0xa

    .line 11
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "a"

    aput-object p2, p1, v1

    const-string p2, "b"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    .line 12
    invoke-static {}, Lcom/google/android/libraries/places/internal/hf$b;->b()Lcom/google/android/libraries/places/internal/in;

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

    const-string p2, "\u0001\u0008\u0000\u0001\u0001\t\u0008\u0000\u0000\u0004\u0001\u000c\u0000\u0002\u0008\u0001\u0003\u0008\u0002\u0005\u0409\u0004\u0006\u0409\u0005\u0007\u0409\u0006\u0008\t\u0007\t\u0409\u0008"

    .line 14
    sget-object v0, Lcom/google/android/libraries/places/internal/hf;->j:Lcom/google/android/libraries/places/internal/hf;

    invoke-static {v0, p2, p1}, Lcom/google/android/libraries/places/internal/hf;->a(Lcom/google/android/libraries/places/internal/jo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_79
    if-nez p2, :cond_7c

    const/4 v0, 0x0

    :cond_7c
    int-to-byte p1, v0

    .line 26
    iput-byte p1, p0, Lcom/google/android/libraries/places/internal/hf;->k:B

    const/4 p1, 0x0

    return-object p1

    .line 25
    :pswitch_81
    iget-byte p1, p0, Lcom/google/android/libraries/places/internal/hf;->k:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_81
        :pswitch_79
        :pswitch_38
        :pswitch_32
        :pswitch_2c
        :pswitch_29
        :pswitch_f
    .end packed-switch
.end method
