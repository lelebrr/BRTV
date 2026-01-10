package v7;

import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.util.concurrent.ConcurrentLinkedQueue;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class g extends d {
    @Override // v7.d
    public final f a(s2.c cVar, String str, String str2) throws Throwable {
        DatagramSocket datagramSocket;
        b bVar = new b((short) (Math.random() * 65535.0d), str2);
        byte[] bArrA = bVar.a();
        InetAddress byName = InetAddress.getByName(str);
        DatagramSocket datagramSocket2 = null;
        try {
            datagramSocket = new DatagramSocket();
        } catch (Throwable th) {
            th = th;
        }
        try {
            DatagramPacket datagramPacket = new DatagramPacket(bArrA, bArrA.length, byName, 53);
            datagramSocket.setSoTimeout(this.f10735c * 1000);
            ((ConcurrentLinkedQueue) cVar.f9745b).add(new s4.h(4, datagramSocket));
            datagramSocket.send(datagramPacket);
            DatagramPacket datagramPacket2 = new DatagramPacket(new byte[1500], 1500);
            datagramSocket.receive(datagramPacket2);
            f fVar = new f(str, 4, bVar, datagramPacket2.getData());
            datagramSocket.close();
            return fVar;
        } catch (Throwable th2) {
            th = th2;
            datagramSocket2 = datagramSocket;
            if (datagramSocket2 != null) {
                datagramSocket2.close();
            }
            throw th;
        }
    }
}
