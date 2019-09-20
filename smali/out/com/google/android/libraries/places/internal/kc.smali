.class final Lcom/google/android/libraries/places/internal/kc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/jm;


# instance fields
.field public final a:Lcom/google/android/libraries/places/internal/jo;

.field public final b:Ljava/lang/String;

.field public final c:[Ljava/lang/Object;

.field private final d:I


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/jo;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/kc;->a:Lcom/google/android/libraries/places/internal/jo;

    .line 3
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/kc;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/kc;->c:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const p3, 0xd800

    if-ge p1, p3, :cond_16

    .line 8
    iput p1, p0, Lcom/google/android/libraries/places/internal/kc;->d:I

    return-void

    :cond_16
    and-int/lit16 p1, p1, 0x1fff

    const/16 v0, 0xd

    const/4 v1, 0x1

    :goto_1b
    add-int/lit8 v2, v1, 0x1

    .line 11
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, p3, :cond_2b

    and-int/lit16 v1, v1, 0x1fff

    shl-int/2addr v1, v0

    or-int/2addr p1, v1

    add-int/lit8 v0, v0, 0xd

    move v1, v2

    goto :goto_1b

    :cond_2b
    shl-int p2, v1, v0

    or-int/2addr p1, p2

    .line 14
    iput p1, p0, Lcom/google/android/libraries/places/internal/kc;->d:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/libraries/places/internal/jz;
    .registers 3

    .line 17
    iget v0, p0, Lcom/google/android/libraries/places/internal/kc;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    sget-object v0, Lcom/google/android/libraries/places/internal/jz;->a:Lcom/google/android/libraries/places/internal/jz;

    return-object v0

    :cond_9
    sget-object v0, Lcom/google/android/libraries/places/internal/jz;->b:Lcom/google/android/libraries/places/internal/jz;

    return-object v0
.end method

.method public final b()Z
    .registers 3

    .line 18
    iget v0, p0, Lcom/google/android/libraries/places/internal/kc;->d:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Lcom/google/android/libraries/places/internal/jo;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/kc;->a:Lcom/google/android/libraries/places/internal/jo;

    return-object v0
.end method
