#ifndef CHANNELFACTORY_H
#define CHANNELFACTORY_H

#include <QObject>
#include <QList>

#include "portdatasorter.h"
#include "channels/channel.h"
#include "ports/port.h"
#include "ports/port_settings/port_settings.h"
#include "ports/dummyport.h"

using ChannelPointer = std::shared_ptr<Channel>;

class ChannelFactory : public QObject
{
    Q_OBJECT

    PortDataSorter *data_sorter;
    QList<ChannelPointer> channel_list;

    PortSettingsPointer createDummyPort();

    ChannelPointer findChannel( int chan_num );

public slots:
    void storeSettings( PortSettingsPointer settings, int chan_num );

public:
    ChannelFactory( PortDataSorter *data_sorter ) :
        data_sorter(data_sorter)
    { }

    void startAll();
    void stopAll();

    ChannelPointer addChannel(int chan_num );
    void removeChannel( int chan_num );
    PortSettingsPointer getPortSettings( int chan_num );

    QColor getChannelColor(int chan_num);
    void setChannelColor(int chan_num, QColor color);
    bool isChannelEnabled(int chan_num);
    void setEnabledChannel(int chan_num , bool is_enabled);
};

#endif // CHANNELFACTORY_H
