// This is a generated file - do not edit.
//
// Generated from map.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'map.pb.dart' as $0;

export 'map.pb.dart';

@$pb.GrpcServiceName('katan.MapService')
class MapServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  MapServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.GetTilesResponse> getTiles(
    $0.GetTilesRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getTiles, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetMapCoatingsResponse> getCoatings(
    $0.GetMapCoatingsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getCoatings, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetTooltipResponse> getTooltip(
    $0.GetTooltipRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getTooltip, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetMapNodesResponse> getMapNodes(
    $0.GetMapNodesRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getMapNodes, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetMapCablesResponse> getMapCables(
    $0.GetMapCablesRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getMapCables, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetMapPolygonsResponse> getMapPolygons(
    $0.GetMapPolygonsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getMapPolygons, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetMapBuildingsResponse> getMapBuildings(
    $0.GetMapBuildingsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getMapBuildings, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetMapDuctsResponse> getMapDucts(
    $0.GetMapDuctsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getMapDucts, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetMapCoveragesResponse> getMapCoverages(
    $0.GetMapCoveragesRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getMapCoverages, request, options: options);
  }

  $grpc.ResponseFuture<$0.ChangeMapDisplayResponse> changeMapDisplay(
    $0.ChangeMapDisplayRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$changeMapDisplay, request, options: options);
  }

  $grpc.ResponseFuture<$0.CreateNoteMapResponse> createNoteMap(
    $0.CreateNoteMapRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createNoteMap, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetNotesMapResponse> getNotesMap(
    $0.GetNotesMapRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getNotesMap, request, options: options);
  }

  $grpc.ResponseFuture<$0.EditNoteMapResponse> editNoteMap(
    $0.EditNoteMapRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$editNoteMap, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteNoteMapResponse> deleteNoteMap(
    $0.DeleteNoteMapRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deleteNoteMap, request, options: options);
  }

  $grpc.ResponseStream<$0.MapDeviceFeature> getDeviceStatus(
    $0.GetMapDeviceStatusRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$getDeviceStatus, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.MapDeviceFeature> getDeviceLldp(
    $0.GetMapDeviceLldpRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$getDeviceLldp, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.GetArObjectsResponse> getArObjects(
    $0.GetArObjectsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getArObjects, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetArObjectResponse> getArObject(
    $0.GetArObjectRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getArObject, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetArDeviceCoverResponse> setArDeviceCover(
    $0.SetArDeviceCoverRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$setArDeviceCover, request, options: options);
  }

  $grpc.ResponseFuture<$0.ClearArDeviceCoverResponse> clearArDeviceCover(
    $0.ClearArDeviceCoverRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$clearArDeviceCover, request, options: options);
  }

  // method descriptors

  static final _$getTiles =
      $grpc.ClientMethod<$0.GetTilesRequest, $0.GetTilesResponse>(
          '/katan.MapService/GetTiles',
          ($0.GetTilesRequest value) => value.writeToBuffer(),
          $0.GetTilesResponse.fromBuffer);
  static final _$getCoatings =
      $grpc.ClientMethod<$0.GetMapCoatingsRequest, $0.GetMapCoatingsResponse>(
          '/katan.MapService/GetCoatings',
          ($0.GetMapCoatingsRequest value) => value.writeToBuffer(),
          $0.GetMapCoatingsResponse.fromBuffer);
  static final _$getTooltip =
      $grpc.ClientMethod<$0.GetTooltipRequest, $0.GetTooltipResponse>(
          '/katan.MapService/GetTooltip',
          ($0.GetTooltipRequest value) => value.writeToBuffer(),
          $0.GetTooltipResponse.fromBuffer);
  static final _$getMapNodes =
      $grpc.ClientMethod<$0.GetMapNodesRequest, $0.GetMapNodesResponse>(
          '/katan.MapService/GetMapNodes',
          ($0.GetMapNodesRequest value) => value.writeToBuffer(),
          $0.GetMapNodesResponse.fromBuffer);
  static final _$getMapCables =
      $grpc.ClientMethod<$0.GetMapCablesRequest, $0.GetMapCablesResponse>(
          '/katan.MapService/GetMapCables',
          ($0.GetMapCablesRequest value) => value.writeToBuffer(),
          $0.GetMapCablesResponse.fromBuffer);
  static final _$getMapPolygons =
      $grpc.ClientMethod<$0.GetMapPolygonsRequest, $0.GetMapPolygonsResponse>(
          '/katan.MapService/GetMapPolygons',
          ($0.GetMapPolygonsRequest value) => value.writeToBuffer(),
          $0.GetMapPolygonsResponse.fromBuffer);
  static final _$getMapBuildings =
      $grpc.ClientMethod<$0.GetMapBuildingsRequest, $0.GetMapBuildingsResponse>(
          '/katan.MapService/GetMapBuildings',
          ($0.GetMapBuildingsRequest value) => value.writeToBuffer(),
          $0.GetMapBuildingsResponse.fromBuffer);
  static final _$getMapDucts =
      $grpc.ClientMethod<$0.GetMapDuctsRequest, $0.GetMapDuctsResponse>(
          '/katan.MapService/GetMapDucts',
          ($0.GetMapDuctsRequest value) => value.writeToBuffer(),
          $0.GetMapDuctsResponse.fromBuffer);
  static final _$getMapCoverages =
      $grpc.ClientMethod<$0.GetMapCoveragesRequest, $0.GetMapCoveragesResponse>(
          '/katan.MapService/GetMapCoverages',
          ($0.GetMapCoveragesRequest value) => value.writeToBuffer(),
          $0.GetMapCoveragesResponse.fromBuffer);
  static final _$changeMapDisplay = $grpc.ClientMethod<
          $0.ChangeMapDisplayRequest, $0.ChangeMapDisplayResponse>(
      '/katan.MapService/ChangeMapDisplay',
      ($0.ChangeMapDisplayRequest value) => value.writeToBuffer(),
      $0.ChangeMapDisplayResponse.fromBuffer);
  static final _$createNoteMap =
      $grpc.ClientMethod<$0.CreateNoteMapRequest, $0.CreateNoteMapResponse>(
          '/katan.MapService/CreateNoteMap',
          ($0.CreateNoteMapRequest value) => value.writeToBuffer(),
          $0.CreateNoteMapResponse.fromBuffer);
  static final _$getNotesMap =
      $grpc.ClientMethod<$0.GetNotesMapRequest, $0.GetNotesMapResponse>(
          '/katan.MapService/GetNotesMap',
          ($0.GetNotesMapRequest value) => value.writeToBuffer(),
          $0.GetNotesMapResponse.fromBuffer);
  static final _$editNoteMap =
      $grpc.ClientMethod<$0.EditNoteMapRequest, $0.EditNoteMapResponse>(
          '/katan.MapService/EditNoteMap',
          ($0.EditNoteMapRequest value) => value.writeToBuffer(),
          $0.EditNoteMapResponse.fromBuffer);
  static final _$deleteNoteMap =
      $grpc.ClientMethod<$0.DeleteNoteMapRequest, $0.DeleteNoteMapResponse>(
          '/katan.MapService/DeleteNoteMap',
          ($0.DeleteNoteMapRequest value) => value.writeToBuffer(),
          $0.DeleteNoteMapResponse.fromBuffer);
  static final _$getDeviceStatus =
      $grpc.ClientMethod<$0.GetMapDeviceStatusRequest, $0.MapDeviceFeature>(
          '/katan.MapService/GetDeviceStatus',
          ($0.GetMapDeviceStatusRequest value) => value.writeToBuffer(),
          $0.MapDeviceFeature.fromBuffer);
  static final _$getDeviceLldp =
      $grpc.ClientMethod<$0.GetMapDeviceLldpRequest, $0.MapDeviceFeature>(
          '/katan.MapService/GetDeviceLldp',
          ($0.GetMapDeviceLldpRequest value) => value.writeToBuffer(),
          $0.MapDeviceFeature.fromBuffer);
  static final _$getArObjects =
      $grpc.ClientMethod<$0.GetArObjectsRequest, $0.GetArObjectsResponse>(
          '/katan.MapService/GetArObjects',
          ($0.GetArObjectsRequest value) => value.writeToBuffer(),
          $0.GetArObjectsResponse.fromBuffer);
  static final _$getArObject =
      $grpc.ClientMethod<$0.GetArObjectRequest, $0.GetArObjectResponse>(
          '/katan.MapService/GetArObject',
          ($0.GetArObjectRequest value) => value.writeToBuffer(),
          $0.GetArObjectResponse.fromBuffer);
  static final _$setArDeviceCover = $grpc.ClientMethod<
          $0.SetArDeviceCoverRequest, $0.SetArDeviceCoverResponse>(
      '/katan.MapService/SetArDeviceCover',
      ($0.SetArDeviceCoverRequest value) => value.writeToBuffer(),
      $0.SetArDeviceCoverResponse.fromBuffer);
  static final _$clearArDeviceCover = $grpc.ClientMethod<
          $0.ClearArDeviceCoverRequest, $0.ClearArDeviceCoverResponse>(
      '/katan.MapService/ClearArDeviceCover',
      ($0.ClearArDeviceCoverRequest value) => value.writeToBuffer(),
      $0.ClearArDeviceCoverResponse.fromBuffer);
}

@$pb.GrpcServiceName('katan.MapService')
abstract class MapServiceBase extends $grpc.Service {
  $core.String get $name => 'katan.MapService';

  MapServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetTilesRequest, $0.GetTilesResponse>(
        'GetTiles',
        getTiles_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetTilesRequest.fromBuffer(value),
        ($0.GetTilesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetMapCoatingsRequest,
            $0.GetMapCoatingsResponse>(
        'GetCoatings',
        getCoatings_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetMapCoatingsRequest.fromBuffer(value),
        ($0.GetMapCoatingsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetTooltipRequest, $0.GetTooltipResponse>(
        'GetTooltip',
        getTooltip_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetTooltipRequest.fromBuffer(value),
        ($0.GetTooltipResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetMapNodesRequest, $0.GetMapNodesResponse>(
            'GetMapNodes',
            getMapNodes_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetMapNodesRequest.fromBuffer(value),
            ($0.GetMapNodesResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetMapCablesRequest, $0.GetMapCablesResponse>(
            'GetMapCables',
            getMapCables_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetMapCablesRequest.fromBuffer(value),
            ($0.GetMapCablesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetMapPolygonsRequest,
            $0.GetMapPolygonsResponse>(
        'GetMapPolygons',
        getMapPolygons_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetMapPolygonsRequest.fromBuffer(value),
        ($0.GetMapPolygonsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetMapBuildingsRequest,
            $0.GetMapBuildingsResponse>(
        'GetMapBuildings',
        getMapBuildings_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetMapBuildingsRequest.fromBuffer(value),
        ($0.GetMapBuildingsResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetMapDuctsRequest, $0.GetMapDuctsResponse>(
            'GetMapDucts',
            getMapDucts_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetMapDuctsRequest.fromBuffer(value),
            ($0.GetMapDuctsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetMapCoveragesRequest,
            $0.GetMapCoveragesResponse>(
        'GetMapCoverages',
        getMapCoverages_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetMapCoveragesRequest.fromBuffer(value),
        ($0.GetMapCoveragesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChangeMapDisplayRequest,
            $0.ChangeMapDisplayResponse>(
        'ChangeMapDisplay',
        changeMapDisplay_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ChangeMapDisplayRequest.fromBuffer(value),
        ($0.ChangeMapDisplayResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.CreateNoteMapRequest, $0.CreateNoteMapResponse>(
            'CreateNoteMap',
            createNoteMap_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.CreateNoteMapRequest.fromBuffer(value),
            ($0.CreateNoteMapResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetNotesMapRequest, $0.GetNotesMapResponse>(
            'GetNotesMap',
            getNotesMap_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetNotesMapRequest.fromBuffer(value),
            ($0.GetNotesMapResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.EditNoteMapRequest, $0.EditNoteMapResponse>(
            'EditNoteMap',
            editNoteMap_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.EditNoteMapRequest.fromBuffer(value),
            ($0.EditNoteMapResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.DeleteNoteMapRequest, $0.DeleteNoteMapResponse>(
            'DeleteNoteMap',
            deleteNoteMap_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.DeleteNoteMapRequest.fromBuffer(value),
            ($0.DeleteNoteMapResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetMapDeviceStatusRequest, $0.MapDeviceFeature>(
            'GetDeviceStatus',
            getDeviceStatus_Pre,
            false,
            true,
            ($core.List<$core.int> value) =>
                $0.GetMapDeviceStatusRequest.fromBuffer(value),
            ($0.MapDeviceFeature value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetMapDeviceLldpRequest, $0.MapDeviceFeature>(
            'GetDeviceLldp',
            getDeviceLldp_Pre,
            false,
            true,
            ($core.List<$core.int> value) =>
                $0.GetMapDeviceLldpRequest.fromBuffer(value),
            ($0.MapDeviceFeature value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetArObjectsRequest, $0.GetArObjectsResponse>(
            'GetArObjects',
            getArObjects_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetArObjectsRequest.fromBuffer(value),
            ($0.GetArObjectsResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetArObjectRequest, $0.GetArObjectResponse>(
            'GetArObject',
            getArObject_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetArObjectRequest.fromBuffer(value),
            ($0.GetArObjectResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetArDeviceCoverRequest,
            $0.SetArDeviceCoverResponse>(
        'SetArDeviceCover',
        setArDeviceCover_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.SetArDeviceCoverRequest.fromBuffer(value),
        ($0.SetArDeviceCoverResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ClearArDeviceCoverRequest,
            $0.ClearArDeviceCoverResponse>(
        'ClearArDeviceCover',
        clearArDeviceCover_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ClearArDeviceCoverRequest.fromBuffer(value),
        ($0.ClearArDeviceCoverResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetTilesResponse> getTiles_Pre($grpc.ServiceCall $call,
      $async.Future<$0.GetTilesRequest> $request) async {
    return getTiles($call, await $request);
  }

  $async.Future<$0.GetTilesResponse> getTiles(
      $grpc.ServiceCall call, $0.GetTilesRequest request);

  $async.Future<$0.GetMapCoatingsResponse> getCoatings_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.GetMapCoatingsRequest> $request) async {
    return getCoatings($call, await $request);
  }

  $async.Future<$0.GetMapCoatingsResponse> getCoatings(
      $grpc.ServiceCall call, $0.GetMapCoatingsRequest request);

  $async.Future<$0.GetTooltipResponse> getTooltip_Pre($grpc.ServiceCall $call,
      $async.Future<$0.GetTooltipRequest> $request) async {
    return getTooltip($call, await $request);
  }

  $async.Future<$0.GetTooltipResponse> getTooltip(
      $grpc.ServiceCall call, $0.GetTooltipRequest request);

  $async.Future<$0.GetMapNodesResponse> getMapNodes_Pre($grpc.ServiceCall $call,
      $async.Future<$0.GetMapNodesRequest> $request) async {
    return getMapNodes($call, await $request);
  }

  $async.Future<$0.GetMapNodesResponse> getMapNodes(
      $grpc.ServiceCall call, $0.GetMapNodesRequest request);

  $async.Future<$0.GetMapCablesResponse> getMapCables_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.GetMapCablesRequest> $request) async {
    return getMapCables($call, await $request);
  }

  $async.Future<$0.GetMapCablesResponse> getMapCables(
      $grpc.ServiceCall call, $0.GetMapCablesRequest request);

  $async.Future<$0.GetMapPolygonsResponse> getMapPolygons_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.GetMapPolygonsRequest> $request) async {
    return getMapPolygons($call, await $request);
  }

  $async.Future<$0.GetMapPolygonsResponse> getMapPolygons(
      $grpc.ServiceCall call, $0.GetMapPolygonsRequest request);

  $async.Future<$0.GetMapBuildingsResponse> getMapBuildings_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.GetMapBuildingsRequest> $request) async {
    return getMapBuildings($call, await $request);
  }

  $async.Future<$0.GetMapBuildingsResponse> getMapBuildings(
      $grpc.ServiceCall call, $0.GetMapBuildingsRequest request);

  $async.Future<$0.GetMapDuctsResponse> getMapDucts_Pre($grpc.ServiceCall $call,
      $async.Future<$0.GetMapDuctsRequest> $request) async {
    return getMapDucts($call, await $request);
  }

  $async.Future<$0.GetMapDuctsResponse> getMapDucts(
      $grpc.ServiceCall call, $0.GetMapDuctsRequest request);

  $async.Future<$0.GetMapCoveragesResponse> getMapCoverages_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.GetMapCoveragesRequest> $request) async {
    return getMapCoverages($call, await $request);
  }

  $async.Future<$0.GetMapCoveragesResponse> getMapCoverages(
      $grpc.ServiceCall call, $0.GetMapCoveragesRequest request);

  $async.Future<$0.ChangeMapDisplayResponse> changeMapDisplay_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.ChangeMapDisplayRequest> $request) async {
    return changeMapDisplay($call, await $request);
  }

  $async.Future<$0.ChangeMapDisplayResponse> changeMapDisplay(
      $grpc.ServiceCall call, $0.ChangeMapDisplayRequest request);

  $async.Future<$0.CreateNoteMapResponse> createNoteMap_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.CreateNoteMapRequest> $request) async {
    return createNoteMap($call, await $request);
  }

  $async.Future<$0.CreateNoteMapResponse> createNoteMap(
      $grpc.ServiceCall call, $0.CreateNoteMapRequest request);

  $async.Future<$0.GetNotesMapResponse> getNotesMap_Pre($grpc.ServiceCall $call,
      $async.Future<$0.GetNotesMapRequest> $request) async {
    return getNotesMap($call, await $request);
  }

  $async.Future<$0.GetNotesMapResponse> getNotesMap(
      $grpc.ServiceCall call, $0.GetNotesMapRequest request);

  $async.Future<$0.EditNoteMapResponse> editNoteMap_Pre($grpc.ServiceCall $call,
      $async.Future<$0.EditNoteMapRequest> $request) async {
    return editNoteMap($call, await $request);
  }

  $async.Future<$0.EditNoteMapResponse> editNoteMap(
      $grpc.ServiceCall call, $0.EditNoteMapRequest request);

  $async.Future<$0.DeleteNoteMapResponse> deleteNoteMap_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.DeleteNoteMapRequest> $request) async {
    return deleteNoteMap($call, await $request);
  }

  $async.Future<$0.DeleteNoteMapResponse> deleteNoteMap(
      $grpc.ServiceCall call, $0.DeleteNoteMapRequest request);

  $async.Stream<$0.MapDeviceFeature> getDeviceStatus_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.GetMapDeviceStatusRequest> $request) async* {
    yield* getDeviceStatus($call, await $request);
  }

  $async.Stream<$0.MapDeviceFeature> getDeviceStatus(
      $grpc.ServiceCall call, $0.GetMapDeviceStatusRequest request);

  $async.Stream<$0.MapDeviceFeature> getDeviceLldp_Pre($grpc.ServiceCall $call,
      $async.Future<$0.GetMapDeviceLldpRequest> $request) async* {
    yield* getDeviceLldp($call, await $request);
  }

  $async.Stream<$0.MapDeviceFeature> getDeviceLldp(
      $grpc.ServiceCall call, $0.GetMapDeviceLldpRequest request);

  $async.Future<$0.GetArObjectsResponse> getArObjects_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.GetArObjectsRequest> $request) async {
    return getArObjects($call, await $request);
  }

  $async.Future<$0.GetArObjectsResponse> getArObjects(
      $grpc.ServiceCall call, $0.GetArObjectsRequest request);

  $async.Future<$0.GetArObjectResponse> getArObject_Pre($grpc.ServiceCall $call,
      $async.Future<$0.GetArObjectRequest> $request) async {
    return getArObject($call, await $request);
  }

  $async.Future<$0.GetArObjectResponse> getArObject(
      $grpc.ServiceCall call, $0.GetArObjectRequest request);

  $async.Future<$0.SetArDeviceCoverResponse> setArDeviceCover_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.SetArDeviceCoverRequest> $request) async {
    return setArDeviceCover($call, await $request);
  }

  $async.Future<$0.SetArDeviceCoverResponse> setArDeviceCover(
      $grpc.ServiceCall call, $0.SetArDeviceCoverRequest request);

  $async.Future<$0.ClearArDeviceCoverResponse> clearArDeviceCover_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.ClearArDeviceCoverRequest> $request) async {
    return clearArDeviceCover($call, await $request);
  }

  $async.Future<$0.ClearArDeviceCoverResponse> clearArDeviceCover(
      $grpc.ServiceCall call, $0.ClearArDeviceCoverRequest request);
}
