.class public final Lcom/google/android/libraries/places/internal/gm;
.super Lcom/google/android/libraries/places/internal/ij;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/jq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/internal/gm$b;,
        Lcom/google/android/libraries/places/internal/gm$a;,
        Lcom/google/android/libraries/places/internal/gm$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/ij<",
        "Lcom/google/android/libraries/places/internal/gm;",
        "Lcom/google/android/libraries/places/internal/gm$b;",
        ">;",
        "Lcom/google/android/libraries/places/internal/jq;"
    }
.end annotation


# static fields
.field public static final p:Lcom/google/android/libraries/places/internal/gm;

.field private static volatile s:Lcom/google/android/libraries/places/internal/jx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/jx<",
            "Lcom/google/android/libraries/places/internal/gm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Z

.field public o:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Lcom/google/android/libraries/places/internal/gm;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/gm;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/gm;->p:Lcom/google/android/libraries/places/internal/gm;

    .line 29
    const-class v0, Lcom/google/android/libraries/places/internal/gm;

    sget-object v1, Lcom/google/android/libraries/places/internal/gm;->p:Lcom/google/android/libraries/places/internal/gm;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/ij;->a(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/ij;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/ij;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/google/android/libraries/places/internal/gm;->c:I

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/libraries/places/internal/ij$d;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 4
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ij$d;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_ac

    .line 27
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 16
    :pswitch_e
    sget-object p1, Lcom/google/android/libraries/places/internal/gm;->s:Lcom/google/android/libraries/places/internal/jx;

    if-nez p1, :cond_27

    .line 18
    const-class p2, Lcom/google/android/libraries/places/internal/gm;

    monitor-enter p2

    .line 19
    :try_start_15
    sget-object p1, Lcom/google/android/libraries/places/internal/gm;->s:Lcom/google/android/libraries/places/internal/jx;

    if-nez p1, :cond_22

    .line 21
    new-instance p1, Lcom/google/android/libraries/places/internal/hl;

    sget-object v0, Lcom/google/android/libraries/places/internal/gm;->p:Lcom/google/android/libraries/places/internal/gm;

    invoke-direct {p1, v0}, Lcom/google/android/libraries/places/internal/hl;-><init>(Lcom/google/android/libraries/places/internal/ij;)V

    .line 22
    sput-object p1, Lcom/google/android/libraries/places/internal/gm;->s:Lcom/google/android/libraries/places/internal/jx;

    .line 23
    :cond_22
    monitor-exit p2

    goto :goto_27

    :catchall_24
    move-exception p1

    monitor-exit p2
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_24

    throw p1

    :cond_27
    :goto_27
    return-object p1

    .line 15
    :pswitch_28
    sget-object p1, Lcom/google/android/libraries/places/internal/gm;->p:Lcom/google/android/libraries/places/internal/gm;

    return-object p1

    .line 6
    :pswitch_2b
    new-instance p1, Lcom/google/android/libraries/places/internal/gm$b;

    .line 7
    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/gm$b;-><init>()V

    return-object p1

    .line 5
    :pswitch_31
    new-instance p1, Lcom/google/android/libraries/places/internal/gm;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/gm;-><init>()V

    return-object p1

    :pswitch_37
    const/16 p1, 0x11

    .line 9
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "a"

    aput-object v1, p1, v0

    const-string v0, "b"

    aput-object v0, p1, p2

    const/4 p2, 0x2

    .line 10
    invoke-static {}, Lcom/google/android/libraries/places/internal/gm$c;->b()Lcom/google/android/libraries/places/internal/in;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string v0, "c"

    aput-object v0, p1, p2

    const/4 p2, 0x4

    .line 11
    invoke-static {}, Lcom/google/android/libraries/places/internal/gm$a;->b()Lcom/google/android/libraries/places/internal/in;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x5

    const-string v0, "d"

    aput-object v0, p1, p2

    const/4 p2, 0x6

    const-string v0, "e"

    aput-object v0, p1, p2

    const/4 p2, 0x7

    const-string v0, "f"

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string v0, "g"

    aput-object v0, p1, p2

    const/16 p2, 0x9

    const-string v0, "h"

    aput-object v0, p1, p2

    const/16 p2, 0xa

    const-string v0, "i"

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

    const-string v0, "o"

    aput-object v0, p1, p2

    const/16 p2, 0x10

    const-string v0, "j"

    aput-object v0, p1, p2

    const-string p2, "\u0001\u000e\u0000\u0001\u0001\u000f\u000e\u0000\u0000\u0000\u0001\u000c\u0000\u0002\u000c\u0001\u0003\u0007\u0002\u0004\u0007\u0003\u0005\u0007\u0004\u0006\u000b\u0005\u0007\u000b\u0006\u0008\u000b\u0007\n\u000b\t\u000b\u000b\n\u000c\u000b\u000b\r\u0007\u000c\u000e\u000b\r\u000f\u000b\u0008"

    .line 14
    sget-object v0, Lcom/google/android/libraries/places/internal/gm;->p:Lcom/google/android/libraries/places/internal/gm;

    invoke-static {v0, p2, p1}, Lcom/google/android/libraries/places/internal/gm;->a(Lcom/google/android/libraries/places/internal/jo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_a5
    const/4 p1, 0x0

    return-object p1

    .line 25
    :pswitch_a7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_a7
        :pswitch_a5
        :pswitch_37
        :pswitch_31
        :pswitch_2b
        :pswitch_28
        :pswitch_e
    .end packed-switch
.end method
