.class public Landroidx/work/Logger$LogcatLogger;
.super Landroidx/work/Logger;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogcatLogger"
.end annotation


# instance fields
.field private mLoggingLevel:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 118
    invoke-direct {p0, p1}, Landroidx/work/Logger;-><init>(I)V

    .line 119
    iput p1, p0, Landroidx/work/Logger$LogcatLogger;->mLoggingLevel:I

    return-void
.end method


# virtual methods
.method public varargs debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    .registers 6

    .line 135
    iget v0, p0, Landroidx/work/Logger$LogcatLogger;->mLoggingLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_15

    if-eqz p3, :cond_12

    .line 136
    array-length v0, p3

    const/4 v1, 0x1

    if-lt v0, v1, :cond_12

    const/4 v0, 0x0

    .line 137
    aget-object p3, p3, v0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 139
    :cond_12
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_15
    return-void
.end method

.method public varargs error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    .registers 6

    .line 168
    iget v0, p0, Landroidx/work/Logger$LogcatLogger;->mLoggingLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_15

    if-eqz p3, :cond_12

    .line 169
    array-length v0, p3

    const/4 v1, 0x1

    if-lt v0, v1, :cond_12

    const/4 v0, 0x0

    .line 170
    aget-object p3, p3, v0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 172
    :cond_12
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_15
    return-void
.end method

.method public varargs info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    .registers 6

    .line 146
    iget v0, p0, Landroidx/work/Logger$LogcatLogger;->mLoggingLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_15

    if-eqz p3, :cond_12

    .line 147
    array-length v0, p3

    const/4 v1, 0x1

    if-lt v0, v1, :cond_12

    const/4 v0, 0x0

    .line 148
    aget-object p3, p3, v0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 150
    :cond_12
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_15
    return-void
.end method

.method public varargs verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    .registers 6

    .line 124
    iget v0, p0, Landroidx/work/Logger$LogcatLogger;->mLoggingLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_15

    if-eqz p3, :cond_12

    .line 125
    array-length v0, p3

    const/4 v1, 0x1

    if-lt v0, v1, :cond_12

    const/4 v0, 0x0

    .line 126
    aget-object p3, p3, v0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 128
    :cond_12
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_15
    return-void
.end method

.method public varargs warning(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    .registers 6

    .line 157
    iget v0, p0, Landroidx/work/Logger$LogcatLogger;->mLoggingLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_15

    if-eqz p3, :cond_12

    .line 158
    array-length v0, p3

    const/4 v1, 0x1

    if-lt v0, v1, :cond_12

    const/4 v0, 0x0

    .line 159
    aget-object p3, p3, v0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 161
    :cond_12
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_15
    return-void
.end method
