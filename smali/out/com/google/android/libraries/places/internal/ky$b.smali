.class final Lcom/google/android/libraries/places/internal/ky$b;
.super Lcom/google/android/libraries/places/internal/ky$d;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/internal/ky;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/ky$d;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;J)B
    .registers 5

    .line 3
    sget-boolean v0, Lcom/google/android/libraries/places/internal/ky;->d:Z

    if-eqz v0, :cond_9

    .line 6
    invoke-static {p1, p2, p3}, Lcom/google/android/libraries/places/internal/ky;->g(Ljava/lang/Object;J)B

    move-result p1

    return p1

    .line 9
    :cond_9
    invoke-static {p1, p2, p3}, Lcom/google/android/libraries/places/internal/ky;->h(Ljava/lang/Object;J)B

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/Object;JB)V
    .registers 6

    .line 11
    sget-boolean v0, Lcom/google/android/libraries/places/internal/ky;->d:Z

    if-eqz v0, :cond_8

    .line 14
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;JB)V

    return-void

    .line 17
    :cond_8
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;JB)V

    return-void
.end method

.method public final a(Ljava/lang/Object;JD)V
    .registers 12

    .line 39
    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/ky$d;->a(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public final a(Ljava/lang/Object;JF)V
    .registers 5

    .line 36
    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/libraries/places/internal/ky$d;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final a(Ljava/lang/Object;JZ)V
    .registers 6

    .line 27
    sget-boolean v0, Lcom/google/android/libraries/places/internal/ky;->d:Z

    if-eqz v0, :cond_8

    .line 30
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;JZ)V

    return-void

    .line 33
    :cond_8
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/libraries/places/internal/ky;->c(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public final b(Ljava/lang/Object;J)Z
    .registers 5

    .line 19
    sget-boolean v0, Lcom/google/android/libraries/places/internal/ky;->d:Z

    if-eqz v0, :cond_9

    .line 22
    invoke-static {p1, p2, p3}, Lcom/google/android/libraries/places/internal/ky;->i(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 25
    :cond_9
    invoke-static {p1, p2, p3}, Lcom/google/android/libraries/places/internal/ky;->j(Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public final c(Ljava/lang/Object;J)F
    .registers 4

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/ky$d;->e(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method public final d(Ljava/lang/Object;J)D
    .registers 4

    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/ky$d;->f(Ljava/lang/Object;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    return-wide p1
.end method
