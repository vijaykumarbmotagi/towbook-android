.class final Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;
.super Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/NativeCrashWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThreadMessage"
.end annotation


# static fields
.field private static final PROTOBUF_TAG:I = 0x1


# instance fields
.field private final importance:I

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/core/internal/models/ThreadData;Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;)V
    .registers 6

    const/4 v0, 0x1

    .line 317
    new-array v1, v0, [Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;-><init>(I[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;)V

    .line 318
    iget-object p2, p1, Lcom/crashlytics/android/core/internal/models/ThreadData;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;->name:Ljava/lang/String;

    .line 319
    iget p1, p1, Lcom/crashlytics/android/core/internal/models/ThreadData;->importance:I

    iput p1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;->importance:I

    return-void
.end method

.method private hasName()Z
    .registers 2

    .line 338
    iget-object v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;->name:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method


# virtual methods
.method public getPropertiesSize()I
    .registers 4

    .line 324
    invoke-direct {p0}, Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;->hasName()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v0

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    const/4 v1, 0x2

    .line 326
    iget v2, p0, Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;->importance:I

    invoke-static {v1, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public writeProperties(Lcom/crashlytics/android/core/CodedOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    invoke-direct {p0}, Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;->hasName()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    .line 332
    iget-object v1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    :cond_10
    const/4 v0, 0x2

    .line 334
    iget v1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$ThreadMessage;->importance:I

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt32(II)V

    return-void
.end method
